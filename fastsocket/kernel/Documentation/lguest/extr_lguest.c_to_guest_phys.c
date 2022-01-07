
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int guest_base ;

__attribute__((used)) static unsigned long to_guest_phys(const void *addr)
{
 return (addr - guest_base);
}
