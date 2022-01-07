
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool pmc_overflow(unsigned long val)
{
 if ((int)val < 0)
  return 1;

 return 0;
}
