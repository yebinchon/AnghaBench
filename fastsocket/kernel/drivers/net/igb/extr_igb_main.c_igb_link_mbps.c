
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int igb_link_mbps(int internal_link_speed)
{
 switch (internal_link_speed) {
 case 129:
  return 100;
 case 128:
  return 1000;
 default:
  return 0;
 }
}
