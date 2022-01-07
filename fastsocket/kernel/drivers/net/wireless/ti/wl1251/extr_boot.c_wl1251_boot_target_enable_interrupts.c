
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int intr_mask; } ;


 int ACX_REG_INTERRUPT_MASK ;
 int HI_CFG ;
 int HI_CFG_DEF_VAL ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

void wl1251_boot_target_enable_interrupts(struct wl1251 *wl)
{
 wl1251_reg_write32(wl, ACX_REG_INTERRUPT_MASK, ~(wl->intr_mask));
 wl1251_reg_write32(wl, HI_CFG, HI_CFG_DEF_VAL);
}
