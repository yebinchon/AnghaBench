
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRAM_ATTR (int ) ;

__attribute__((used)) static char *get_dram_attr(u32 reg)
{
 switch(DRAM_ATTR(reg)) {
  case 0:
   return "DRAM";
  case 1:
   return "MMCFG";
  case 2:
   return "NXM";
  default:
   return "unknown";
 }
}
