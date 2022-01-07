
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hpt37x_clock_slot(unsigned int freq, unsigned int base)
{
 unsigned int f = (base * freq) / 192;
 if (f < 40)
  return 0;
 if (f < 45)
  return 1;
 if (f < 55)
  return 2;
 return 3;
}
