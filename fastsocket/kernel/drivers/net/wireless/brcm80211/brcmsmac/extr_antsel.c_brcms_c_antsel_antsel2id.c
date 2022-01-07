
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct antsel_info {scalar_t__ antsel_type; } ;


 scalar_t__ ANTSEL_2x3 ;
 scalar_t__ ANTSEL_2x4 ;
 int * mimo_2x3_div_antselid_tbl ;
 int * mimo_2x4_div_antselid_tbl ;

u8 brcms_c_antsel_antsel2id(struct antsel_info *asi, u16 antsel)
{
 u8 antselid = 0;

 if (asi->antsel_type == ANTSEL_2x4) {

  antselid = mimo_2x4_div_antselid_tbl[(antsel & 0xf)];
  return antselid;

 } else if (asi->antsel_type == ANTSEL_2x3) {

  antselid = mimo_2x3_div_antselid_tbl[(antsel & 0xf)];
  return antselid;
 }

 return antselid;
}
