
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8
wbcir_to_rc6cells(u8 val)
{
 u8 coded = 0x00;
 int i;

 val &= 0x0F;
 for (i = 0; i < 4; i++) {
  if (val & 0x01)
   coded |= 0x02 << (i * 2);
  else
   coded |= 0x01 << (i * 2);
  val >>= 1;
 }

 return coded;
}
