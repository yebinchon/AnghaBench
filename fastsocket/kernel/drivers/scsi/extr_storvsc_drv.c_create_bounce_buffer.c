
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 int ALIGN (unsigned int,unsigned int) ;
 int GFP_ATOMIC ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int WRITE_TYPE ;
 struct page* alloc_page (int ) ;
 int destroy_bounce_buffer (struct scatterlist*,int) ;
 struct scatterlist* kcalloc (int,int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,unsigned int,int ) ;

__attribute__((used)) static struct scatterlist *create_bounce_buffer(struct scatterlist *sgl,
      unsigned int sg_count,
      unsigned int len,
      int write)
{
 int i;
 int num_pages;
 struct scatterlist *bounce_sgl;
 struct page *page_buf;
 unsigned int buf_len = ((write == WRITE_TYPE) ? 0 : PAGE_SIZE);

 num_pages = ALIGN(len, PAGE_SIZE) >> PAGE_SHIFT;

 bounce_sgl = kcalloc(num_pages, sizeof(struct scatterlist), GFP_ATOMIC);
 if (!bounce_sgl)
  return ((void*)0);

 sg_init_table(bounce_sgl, num_pages);
 for (i = 0; i < num_pages; i++) {
  page_buf = alloc_page(GFP_ATOMIC);
  if (!page_buf)
   goto cleanup;
  sg_set_page(&bounce_sgl[i], page_buf, buf_len, 0);
 }

 return bounce_sgl;

cleanup:
 destroy_bounce_buffer(bounce_sgl, num_pages);
 return ((void*)0);
}
