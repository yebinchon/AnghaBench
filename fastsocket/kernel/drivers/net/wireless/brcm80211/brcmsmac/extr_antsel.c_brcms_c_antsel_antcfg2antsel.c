
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct antsel_info {scalar_t__ antsel_type; } ;


 scalar_t__ ANTSEL_2x3 ;
 scalar_t__ ANTSEL_2x4 ;
 size_t BRCMS_ANTIDX_11N (int ) ;
 int BRCMS_ANTSEL_11N (size_t) ;
 int* mimo_2x3_div_antselpat_tbl ;
 int* mimo_2x4_div_antselpat_tbl ;

__attribute__((used)) static u16 brcms_c_antsel_antcfg2antsel(struct antsel_info *asi, u8 ant_cfg)
{
 u8 idx = BRCMS_ANTIDX_11N(BRCMS_ANTSEL_11N(ant_cfg));
 u16 mimo_antsel = 0;

 if (asi->antsel_type == ANTSEL_2x4) {

  mimo_antsel = (mimo_2x4_div_antselpat_tbl[idx] & 0xf);
  return mimo_antsel;

 } else if (asi->antsel_type == ANTSEL_2x3) {

  mimo_antsel = (mimo_2x3_div_antselpat_tbl[idx] & 0xf);
  return mimo_antsel;
 }

 return mimo_antsel;
}
