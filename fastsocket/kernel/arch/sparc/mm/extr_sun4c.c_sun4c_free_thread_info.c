
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int BUCKET_EMPTY ;
 int BUCKET_NUM (unsigned long) ;
 unsigned long BUCKET_PTE_PAGE (int ) ;
 unsigned long PAGE_SIZE ;
 int THREAD_INFO_ORDER ;
 int free_pages (unsigned long,int ) ;
 int garbage_collect (int) ;
 int * sun4c_bucket ;
 int sun4c_flush_page (unsigned long) ;
 int sun4c_get_pte (unsigned long) ;
 int sun4c_lowbucket_avail ;
 int sun4c_put_pte (unsigned long,int ) ;

__attribute__((used)) static void sun4c_free_thread_info(struct thread_info *ti)
{
 unsigned long tiaddr = (unsigned long) ti;
 unsigned long pages = BUCKET_PTE_PAGE(sun4c_get_pte(tiaddr));
 int entry = BUCKET_NUM(tiaddr);


 sun4c_flush_page(tiaddr);
 sun4c_flush_page(tiaddr + PAGE_SIZE);

 sun4c_put_pte(tiaddr, 0);
 sun4c_put_pte(tiaddr + PAGE_SIZE, 0);

 sun4c_bucket[entry] = BUCKET_EMPTY;
 if (entry < sun4c_lowbucket_avail)
  sun4c_lowbucket_avail = entry;

 free_pages(pages, THREAD_INFO_ORDER);
 garbage_collect(entry);
}
