
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int __omap_prcm_write (int ,int ,int ,int ) ;
 int prm_base ;

void prm_write_mod_reg(u32 val, s16 module, u16 idx)
{
 __omap_prcm_write(val, prm_base, module, idx);
}
