
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long virt_to_phys (void*) ;

unsigned long sleep_phys_sp(void *sp)
{
 return virt_to_phys(sp);
}
