
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t findstr(uint8_t *data, int n, const uint8_t *str, int len)
{
 int i, j;

 for (i = 0; i <= (n - len); i++) {
  for (j = 0; j < len; j++)
   if (data[i + j] != str[j])
    break;
  if (j == len)
   return i;
 }

 return 0;
}
