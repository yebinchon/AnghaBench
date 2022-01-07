
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int be_mac_to_link_speed(int mac_speed)
{
 switch (mac_speed) {
 case 128:
  return 0;
 case 130:
  return 10;
 case 132:
  return 100;
 case 129:
  return 1000;
 case 131:
  return 10000;
 }
 return 0;
}
