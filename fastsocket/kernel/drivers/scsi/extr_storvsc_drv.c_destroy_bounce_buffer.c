
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int kfree (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;

__attribute__((used)) static void destroy_bounce_buffer(struct scatterlist *sgl,
      unsigned int sg_count)
{
 int i;
 struct page *page_buf;

 for (i = 0; i < sg_count; i++) {
  page_buf = sg_page((&sgl[i]));
  if (page_buf != ((void*)0))
   __free_page(page_buf);
 }

 kfree(sgl);
}
