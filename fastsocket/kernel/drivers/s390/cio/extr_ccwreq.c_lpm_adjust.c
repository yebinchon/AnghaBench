
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int lpm_adjust(int lpm, int mask)
{
 while (lpm && ((lpm & mask) == 0))
  lpm >>= 1;
 return lpm;
}
