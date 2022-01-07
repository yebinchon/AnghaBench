
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rq_map_data {unsigned long offset; } ;
struct st_buffer {struct page** mapped_pages; struct rq_map_data map_data; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {TYPE_2__* mm; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int READ ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int flush_dcache_page (struct page*) ;
 int get_user_pages (TYPE_1__*,TYPE_2__*,unsigned long,int const,int,int ,struct page**,int *) ;
 int kfree (struct page**) ;
 struct page** kmalloc (unsigned int const,int ) ;
 int page_cache_release (struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int sgl_map_user_pages(struct st_buffer *STbp,
         const unsigned int max_pages, unsigned long uaddr,
         size_t count, int rw)
{
 unsigned long end = (uaddr + count + PAGE_SIZE - 1) >> PAGE_SHIFT;
 unsigned long start = uaddr >> PAGE_SHIFT;
 const int nr_pages = end - start;
 int res, i, j;
 struct page **pages;
 struct rq_map_data *mdata = &STbp->map_data;


 if ((uaddr + count) < uaddr)
  return -EINVAL;


        if (nr_pages > max_pages)
  return -ENOMEM;


 if (count == 0)
  return 0;

 if ((pages = kmalloc(max_pages * sizeof(*pages), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;


 down_read(&current->mm->mmap_sem);

 res = get_user_pages(
  current,
  current->mm,
  uaddr,
  nr_pages,
  rw == READ,
  0,
  pages,
  ((void*)0));
 up_read(&current->mm->mmap_sem);


 if (res < nr_pages)
  goto out_unmap;

        for (i=0; i < nr_pages; i++) {



  flush_dcache_page(pages[i]);
        }

 mdata->offset = uaddr & ~PAGE_MASK;
 STbp->mapped_pages = pages;

 return nr_pages;
 out_unmap:
 if (res > 0) {
  for (j=0; j < res; j++)
   page_cache_release(pages[j]);
  res = 0;
 }
 kfree(pages);
 return res;
}
