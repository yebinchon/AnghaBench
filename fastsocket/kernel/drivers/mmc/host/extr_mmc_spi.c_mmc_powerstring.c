
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static char *mmc_powerstring(u8 power_mode)
{
 switch (power_mode) {
 case 130: return "off";
 case 128: return "up";
 case 129: return "on";
 }
 return "?";
}
