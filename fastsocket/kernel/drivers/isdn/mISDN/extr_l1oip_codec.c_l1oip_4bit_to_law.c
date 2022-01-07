
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int* table_dec ;

int
l1oip_4bit_to_law(u8 *data, int len, u8 *result)
{
 int i = 0;
 u16 r;

 while (i < len) {
  r = table_dec[*data++];
  *result++ = r>>8;
  *result++ = r;
  i++;
 }

 return len << 1;
}
