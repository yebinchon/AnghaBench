
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* __ioremap (unsigned long,int ,int ) ;
 void* __va (unsigned long) ;
 size_t copy_oldmem_vaddr (void*,char*,size_t,unsigned long,int) ;
 int iounmap (void*) ;
 unsigned long max_pfn ;
 size_t min (size_t,int ) ;

ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
   size_t csize, unsigned long offset, int userbuf)
{
 void *vaddr;

 if (!csize)
  return 0;

 csize = min(csize, PAGE_SIZE);

 if (pfn < max_pfn) {
  vaddr = __va(pfn << PAGE_SHIFT);
  csize = copy_oldmem_vaddr(vaddr, buf, csize, offset, userbuf);
 } else {
  vaddr = __ioremap(pfn << PAGE_SHIFT, PAGE_SIZE, 0);
  csize = copy_oldmem_vaddr(vaddr, buf, csize, offset, userbuf);
  iounmap(vaddr);
 }

 return csize;
}
