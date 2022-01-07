
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ADDR_SURF_16_BANK ;
 int ADDR_SURF_2_BANK ;
 int ADDR_SURF_4_BANK ;
 int ADDR_SURF_8_BANK ;

__attribute__((used)) static u32 evergreen_cs_get_num_banks(u32 nbanks)
{
 switch (nbanks) {
 case 2:
  return ADDR_SURF_2_BANK;
 case 4:
  return ADDR_SURF_4_BANK;
 case 8:
 default:
  return ADDR_SURF_8_BANK;
 case 16:
  return ADDR_SURF_16_BANK;
 }
}
