
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int B43legacy_BUG_ON (int) ;
__attribute__((used)) static u8 b43legacy_calc_fallback_rate(u8 bitrate)
{
 switch (bitrate) {
 case 138:
  return 138;
 case 137:
  return 138;
 case 136:
  return 137;
 case 139:
  return 136;
 case 129:
  return 136;
 case 128:
  return 129;
 case 135:
  return 128;
 case 134:
  return 135;
 case 133:
  return 134;
 case 132:
  return 133;
 case 131:
  return 132;
 case 130:
  return 131;
 }
 B43legacy_BUG_ON(1);
 return 0;
}
