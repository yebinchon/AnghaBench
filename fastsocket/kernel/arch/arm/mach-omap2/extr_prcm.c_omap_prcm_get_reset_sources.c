
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RM_RSTST ;
 int WKUP_MOD ;
 int prm_read_mod_reg (int ,int ) ;

u32 omap_prcm_get_reset_sources(void)
{

 return prm_read_mod_reg(WKUP_MOD, RM_RSTST) & 0x7f;
}
