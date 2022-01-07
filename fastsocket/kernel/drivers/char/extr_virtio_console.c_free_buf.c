
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_buffer {unsigned int sgpages; int * sg; struct port_buffer* buf; } ;
struct page {int dummy; } ;


 int kfree (struct port_buffer*) ;
 int put_page (struct page*) ;
 struct page* sg_page (int *) ;

__attribute__((used)) static void free_buf(struct port_buffer *buf)
{
 unsigned int i;

 kfree(buf->buf);
 for (i = 0; i < buf->sgpages; i++) {
  struct page *page = sg_page(&buf->sg[i]);
  if (!page)
   break;
  put_page(page);
 }

 kfree(buf);
}
