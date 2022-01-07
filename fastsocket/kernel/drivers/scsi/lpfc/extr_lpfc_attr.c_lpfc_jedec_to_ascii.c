
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
lpfc_jedec_to_ascii(int incr, char hdw[])
{
 int i, j;
 for (i = 0; i < 8; i++) {
  j = (incr & 0xf);
  if (j <= 9)
   hdw[7 - i] = 0x30 + j;
   else
   hdw[7 - i] = 0x61 + j - 10;
  incr = (incr >> 4);
 }
 hdw[8] = 0;
 return;
}
