
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EFAULT ;
 size_t ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ copy_to_user (char*,void*,size_t) ;
 void* ioremap_cache (unsigned long,int ) ;
 int iounmap (void*) ;
 int memcpy (char*,void*,size_t) ;
 int set_iounmap_nonlazy () ;

ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
  size_t csize, unsigned long offset, int userbuf)
{
 void *vaddr;

 if (!csize)
  return 0;

 vaddr = ioremap_cache(pfn << PAGE_SHIFT, PAGE_SIZE);
 if (!vaddr)
  return -ENOMEM;

 if (userbuf) {
  if (copy_to_user(buf, vaddr + offset, csize)) {
   iounmap(vaddr);
   return -EFAULT;
  }
 } else
  memcpy(buf, vaddr + offset, csize);

 set_iounmap_nonlazy();
 iounmap(vaddr);
 return csize;
}
