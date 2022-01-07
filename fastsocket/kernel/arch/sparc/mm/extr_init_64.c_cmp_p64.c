
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom64_registers {scalar_t__ phys_addr; } ;



__attribute__((used)) static int cmp_p64(const void *a, const void *b)
{
 const struct linux_prom64_registers *x = a, *y = b;

 if (x->phys_addr > y->phys_addr)
  return 1;
 if (x->phys_addr < y->phys_addr)
  return -1;
 return 0;
}
