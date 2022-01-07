
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long KERNBASE ;
 unsigned long kern_base ;

__attribute__((used)) static unsigned long kimage_addr_to_ra(const char *p)
{
 unsigned long val = (unsigned long) p;

 return kern_base + (val - KERNBASE);
}
