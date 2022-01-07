
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int nrbits(unsigned int val, int bitcount)
{
 int i, total = 0;

 for (i = 0; (i < bitcount); i++)
  total += (((0x1 << i) & val) ? 1 : 0);
 return total;
}
