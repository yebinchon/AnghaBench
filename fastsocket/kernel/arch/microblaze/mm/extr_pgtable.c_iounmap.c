
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 void* high_memory ;
 unsigned long ioremap_bot ;
 int vfree (void*) ;

void iounmap(void *addr)
{
 if (addr > high_memory && (unsigned long) addr < ioremap_bot)
  vfree((void *) (PAGE_MASK & (unsigned long) addr));
}
