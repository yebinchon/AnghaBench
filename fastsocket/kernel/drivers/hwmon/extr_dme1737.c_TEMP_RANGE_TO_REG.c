
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* TEMP_RANGE ;

__attribute__((used)) static int TEMP_RANGE_TO_REG(int val, int reg)
{
 int i;

 for (i = 15; i > 0; i--) {
  if (val > (TEMP_RANGE[i] + TEMP_RANGE[i - 1] + 1) / 2) {
   break;
  }
 }

 return (reg & 0x0f) | (i << 4);
}
