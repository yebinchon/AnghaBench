
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int __omap_prcm_read (int ,int ,int ) ;
 int cm_base ;

u32 cm_read_mod_reg(s16 module, u16 idx)
{
 return __omap_prcm_read(cm_base, module, idx);
}
