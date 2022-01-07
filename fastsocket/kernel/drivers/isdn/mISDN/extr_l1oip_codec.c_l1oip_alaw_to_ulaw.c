
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * alaw_to_ulaw ;

int
l1oip_alaw_to_ulaw(u8 *data, int len, u8 *result)
{
 int i = 0;

 while (i < len) {
  *result++ = alaw_to_ulaw[*data++];
  i++;
 }

 return len;
}
