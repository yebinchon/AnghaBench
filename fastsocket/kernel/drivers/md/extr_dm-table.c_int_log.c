
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int dm_div_up (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int int_log(unsigned int n, unsigned int base)
{
 int result = 0;

 while (n > 1) {
  n = dm_div_up(n, base);
  result++;
 }

 return result;
}
