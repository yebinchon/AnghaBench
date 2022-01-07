
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtrr_type ;


 int ENOSPC ;
 int cyrix_get_arr (int,unsigned long*,unsigned long*,int *) ;

__attribute__((used)) static int
cyrix_get_free_region(unsigned long base, unsigned long size, int replace_reg)
{
 unsigned long lbase, lsize;
 mtrr_type ltype;
 int i;

 switch (replace_reg) {
 case 7:
  if (size < 0x40)
   break;
 case 6:
 case 5:
 case 4:
  return replace_reg;
 case 3:
 case 2:
 case 1:
 case 0:
  return replace_reg;
 }

 if (size > 0x2000) {
  cyrix_get_arr(7, &lbase, &lsize, &ltype);
  if (lsize == 0)
   return 7;

 } else {
  for (i = 0; i < 7; i++) {
   cyrix_get_arr(i, &lbase, &lsize, &ltype);
   if (lsize == 0)
    return i;
  }




  cyrix_get_arr(i, &lbase, &lsize, &ltype);
  if ((lsize == 0) && (size >= 0x40))
   return i;
 }
 return -ENOSPC;
}
