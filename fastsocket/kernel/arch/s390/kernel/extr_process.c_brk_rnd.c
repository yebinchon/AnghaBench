
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SHIFT ;
 int get_random_int () ;
 scalar_t__ is_32bit_task () ;

__attribute__((used)) static inline unsigned long brk_rnd(void)
{

 if (is_32bit_task())
  return (get_random_int() & 0x7ffUL) << PAGE_SHIFT;
 else
  return (get_random_int() & 0x3ffffUL) << PAGE_SHIFT;
}
