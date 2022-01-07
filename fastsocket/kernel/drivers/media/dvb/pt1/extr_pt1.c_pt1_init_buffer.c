
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt1_buffer_page {scalar_t__* upackets; } ;
struct pt1_buffer {int addr; struct pt1_buffer_page* page; } ;
struct pt1 {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PT1_NR_UPACKETS ;
 struct pt1_buffer_page* pt1_alloc_page (struct pt1*,int *,int *) ;

__attribute__((used)) static int
pt1_init_buffer(struct pt1 *pt1, struct pt1_buffer *buf, u32 *pfnp)
{
 struct pt1_buffer_page *page;
 dma_addr_t addr;

 page = pt1_alloc_page(pt1, &addr, pfnp);
 if (page == ((void*)0))
  return -ENOMEM;

 page->upackets[PT1_NR_UPACKETS - 1] = 0;

 buf->page = page;
 buf->addr = addr;
 return 0;
}
