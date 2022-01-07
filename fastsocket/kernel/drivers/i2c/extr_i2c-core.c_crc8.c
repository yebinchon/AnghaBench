
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int POLY ;

__attribute__((used)) static u8 crc8(u16 data)
{
 int i;

 for(i = 0; i < 8; i++) {
  if (data & 0x8000)
   data = data ^ POLY;
  data = data << 1;
 }
 return (u8)(data >> 8);
}
