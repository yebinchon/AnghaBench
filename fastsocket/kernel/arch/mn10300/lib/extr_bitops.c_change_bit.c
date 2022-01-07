
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_and_clear_bit (int,void volatile*) ;
 int test_and_set_bit (int,void volatile*) ;
 scalar_t__ test_bit (int,void volatile*) ;

void change_bit(int nr, volatile void *addr)
{
 if (test_bit(nr, addr))
  goto try_clear_bit;

try_set_bit:
 if (!test_and_set_bit(nr, addr))
  return;

try_clear_bit:
 if (test_and_clear_bit(nr, addr))
  return;

 goto try_set_bit;
}
