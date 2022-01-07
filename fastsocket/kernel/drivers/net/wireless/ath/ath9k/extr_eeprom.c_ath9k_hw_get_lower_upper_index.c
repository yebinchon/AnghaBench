
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;



bool ath9k_hw_get_lower_upper_index(u8 target, u8 *pList, u16 listSize,
        u16 *indexL, u16 *indexR)
{
 u16 i;

 if (target <= pList[0]) {
  *indexL = *indexR = 0;
  return 1;
 }
 if (target >= pList[listSize - 1]) {
  *indexL = *indexR = (u16) (listSize - 1);
  return 1;
 }

 for (i = 0; i < listSize - 1; i++) {
  if (pList[i] == target) {
   *indexL = *indexR = i;
   return 1;
  }
  if (target < pList[i + 1]) {
   *indexL = i;
   *indexR = (u16) (i + 1);
   return 0;
  }
 }
 return 0;
}
