
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int FREQ_TO_REG(const int *map, int freq)
{
 int i;


 for (i = 0; i < 7; ++i)
  if (freq <= (map[i] + map[i + 1]) / 2)
   break;
 return i;
}
