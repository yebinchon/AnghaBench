
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct dm_crypt_io {TYPE_1__* target; } ;
struct crypt_config {int page_pool; int bs; } ;
struct bio {int bi_size; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct crypt_config* private; } ;


 int GFP_NOIO ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 int __GFP_NOWARN ;
 int __GFP_WAIT ;
 int bio_add_page (struct bio*,struct page*,unsigned int,int ) ;
 struct bio* bio_alloc_bioset (int,unsigned int,int ) ;
 int bio_put (struct bio*) ;
 int clone_init (struct dm_crypt_io*,struct bio*) ;
 struct page* mempool_alloc (int ,int) ;
 int mempool_free (struct page*,int ) ;

__attribute__((used)) static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned size,
          unsigned *out_of_pages)
{
 struct crypt_config *cc = io->target->private;
 struct bio *clone;
 unsigned int nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 gfp_t gfp_mask = GFP_NOIO | __GFP_HIGHMEM;
 unsigned i, len;
 struct page *page;

 clone = bio_alloc_bioset(GFP_NOIO, nr_iovecs, cc->bs);
 if (!clone)
  return ((void*)0);

 clone_init(io, clone);
 *out_of_pages = 0;

 for (i = 0; i < nr_iovecs; i++) {
  page = mempool_alloc(cc->page_pool, gfp_mask);
  if (!page) {
   *out_of_pages = 1;
   break;
  }






  gfp_mask = (gfp_mask | __GFP_NOWARN) & ~__GFP_WAIT;

  len = (size > PAGE_SIZE) ? PAGE_SIZE : size;

  if (!bio_add_page(clone, page, len, 0)) {
   mempool_free(page, cc->page_pool);
   break;
  }

  size -= len;
 }

 if (!clone->bi_size) {
  bio_put(clone);
  return ((void*)0);
 }

 return clone;
}
