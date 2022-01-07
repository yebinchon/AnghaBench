
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int MAX_ADDR_CELLS ;

__attribute__((used)) static int compare_reg(u32 *reg, u32 *range, u32 *rangesize)
{
 int i;
 u32 end;

 for (i = 0; i < MAX_ADDR_CELLS; i++) {
  if (reg[i] < range[i])
   return 0;
  if (reg[i] > range[i])
   break;
 }

 for (i = 0; i < MAX_ADDR_CELLS; i++) {
  end = range[i] + rangesize[i];

  if (reg[i] < end)
   break;
  if (reg[i] > end)
   return 0;
 }

 return reg[i] != end;
}
