
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KSEG0ADDR (void*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void dma_free(void *vaddr, size_t size)
{
 vaddr = (void *)KSEG0ADDR(vaddr);
 free_pages((unsigned long) vaddr, get_order(size));
}
