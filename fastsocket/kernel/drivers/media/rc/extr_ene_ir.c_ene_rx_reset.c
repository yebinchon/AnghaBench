
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int dummy; } ;


 int ENE_CIRCFG ;
 int ENE_CIRCFG_RX_EN ;
 int ene_clear_reg_mask (struct ene_device*,int ,int ) ;
 int ene_set_reg_mask (struct ene_device*,int ,int ) ;

__attribute__((used)) static void ene_rx_reset(struct ene_device *dev)
{
 ene_clear_reg_mask(dev, ENE_CIRCFG, ENE_CIRCFG_RX_EN);
 ene_set_reg_mask(dev, ENE_CIRCFG, ENE_CIRCFG_RX_EN);
}
