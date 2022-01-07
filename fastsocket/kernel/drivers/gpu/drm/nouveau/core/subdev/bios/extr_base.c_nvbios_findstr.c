
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;



u16
nvbios_findstr(const u8 *data, int size, const char *str, int len)
{
 int i, j;

 for (i = 0; i <= (size - len); i++) {
  for (j = 0; j < len; j++)
   if ((char)data[i + j] != str[j])
    break;
  if (j == len)
   return i;
 }

 return 0;
}
