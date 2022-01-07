
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int page_pool; } ;
struct bio_vec {int * bv_page; } ;
struct bio {unsigned int bi_vcnt; } ;


 int BUG_ON (int) ;
 struct bio_vec* bio_iovec_idx (struct bio*,unsigned int) ;
 int mempool_free (int *,int ) ;

__attribute__((used)) static void crypt_free_buffer_pages(struct crypt_config *cc, struct bio *clone)
{
 unsigned int i;
 struct bio_vec *bv;

 for (i = 0; i < clone->bi_vcnt; i++) {
  bv = bio_iovec_idx(clone, i);
  BUG_ON(!bv->bv_page);
  mempool_free(bv->bv_page, cc->page_pool);
  bv->bv_page = ((void*)0);
 }
}
