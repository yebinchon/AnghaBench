
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cclk () ;

__attribute__((used)) static unsigned int bfin_getfreq_khz(unsigned int cpu)
{

 if (cpu != 0)
  return -1;

 return get_cclk() / 1000;
}
