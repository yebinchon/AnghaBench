
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static u32 get_longbusy_msecs(int longbusy_rc)
{
 switch (longbusy_rc) {
 case 129:
  return 1;
 case 131:
  return 10;
 case 133:
  return 100;
 case 128:
  return 1000;
 case 130:
  return 10000;
 case 132:
  return 100000;
 default:
  return 1;
 }
}
