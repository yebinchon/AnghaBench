
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
any_bits_set(unsigned test, unsigned mask)
{
 return (test & mask) != 0;
}
