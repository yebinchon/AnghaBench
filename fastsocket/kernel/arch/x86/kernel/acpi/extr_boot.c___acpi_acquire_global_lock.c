
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cmpxchg (unsigned int*,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

int __acpi_acquire_global_lock(unsigned int *lock)
{
 unsigned int old, new, val;
 do {
  old = *lock;
  new = (((old & ~0x3) + 2) + ((old >> 1) & 0x1));
  val = cmpxchg(lock, old, new);
 } while (unlikely (val != old));
 return (new < 3) ? -1 : 0;
}
