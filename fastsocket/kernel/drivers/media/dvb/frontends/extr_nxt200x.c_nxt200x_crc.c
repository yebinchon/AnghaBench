
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int CRC_CCIT_MASK ;

__attribute__((used)) static u16 nxt200x_crc(u16 crc, u8 c)
{
 u8 i;
 u16 input = (u16) c & 0xFF;

 input<<=8;
 for(i=0; i<8; i++) {
  if((crc^input) & 0x8000)
   crc=(crc<<1)^CRC_CCIT_MASK;
  else
   crc<<=1;
  input<<=1;
 }
 return crc;
}
