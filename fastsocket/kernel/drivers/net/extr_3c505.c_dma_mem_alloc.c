
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 unsigned long __get_dma_pages (int ,int) ;
 int get_order (int) ;

__attribute__((used)) static unsigned long dma_mem_alloc(int size)
{
 int order = get_order(size);
 return __get_dma_pages(GFP_KERNEL, order);
}
