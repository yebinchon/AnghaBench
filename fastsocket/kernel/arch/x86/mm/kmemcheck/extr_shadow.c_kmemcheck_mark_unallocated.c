
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEMCHECK_SHADOW_UNALLOCATED ;
 int mark_shadow (void*,unsigned int,int ) ;

void kmemcheck_mark_unallocated(void *address, unsigned int n)
{
 mark_shadow(address, n, KMEMCHECK_SHADOW_UNALLOCATED);
}
