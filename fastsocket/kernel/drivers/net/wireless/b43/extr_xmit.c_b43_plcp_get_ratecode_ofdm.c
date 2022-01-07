
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int B43_WARN_ON (int) ;

u8 b43_plcp_get_ratecode_ofdm(const u8 bitrate)
{
 switch (bitrate) {
 case 129:
  return 0xB;
 case 128:
  return 0xF;
 case 135:
  return 0xA;
 case 134:
  return 0xE;
 case 133:
  return 0x9;
 case 132:
  return 0xD;
 case 131:
  return 0x8;
 case 130:
  return 0xC;
 }
 B43_WARN_ON(1);
 return 0;
}
