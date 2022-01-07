
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* guest_base ;

__attribute__((used)) static void *from_guest_phys(unsigned long addr)
{
 return guest_base + addr;
}
