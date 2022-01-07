
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DVMA_PAGE_MASK ;
 int DVMA_PAGE_SIZE ;
 int GFP_ATOMIC ;
 unsigned long __get_free_pages (int ,int ) ;
 unsigned long dvma_btov (unsigned long) ;
 scalar_t__ dvma_map_align (unsigned long,unsigned long,unsigned long) ;
 scalar_t__ dvma_map_cpu (unsigned long,unsigned long,unsigned long) ;
 int dvma_unmap (void*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (unsigned long) ;
 int printk (char*,unsigned long,...) ;

void *dvma_malloc_align(unsigned long len, unsigned long align)
{
 unsigned long kaddr;
 unsigned long baddr;
 unsigned long vaddr;

 if(!len)
  return ((void*)0);




 len = ((len + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

        if((kaddr = __get_free_pages(GFP_ATOMIC, get_order(len))) == 0)
  return ((void*)0);

 if((baddr = (unsigned long)dvma_map_align(kaddr, len, align)) == 0) {
  free_pages(kaddr, get_order(len));
  return ((void*)0);
 }

 vaddr = dvma_btov(baddr);

 if(dvma_map_cpu(kaddr, vaddr, len) < 0) {
  dvma_unmap((void *)baddr);
  free_pages(kaddr, get_order(len));
  return ((void*)0);
 }






 return (void *)vaddr;

}
