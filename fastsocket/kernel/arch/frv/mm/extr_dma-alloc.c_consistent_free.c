
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 scalar_t__ in_interrupt () ;
 int vfree (void*) ;

void consistent_free(void *vaddr)
{
 if (in_interrupt())
  BUG();
 vfree(vaddr);
}
