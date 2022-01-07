
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int rx_enabled; int rdev; } ;


 int ENE_FW1 ;
 int ENE_FW1_ENABLE ;
 int ENE_FW1_IRQ ;
 int ene_clear_reg_mask (struct ene_device*,int ,int) ;
 int ene_rx_enable_cir_engine (struct ene_device*,int) ;
 int ene_rx_enable_fan_input (struct ene_device*,int) ;
 int ir_raw_event_set_idle (int ,int) ;

__attribute__((used)) static void ene_rx_disable(struct ene_device *dev)
{

 ene_rx_enable_cir_engine(dev, 0);
 ene_rx_enable_fan_input(dev, 0);


 ene_clear_reg_mask(dev, ENE_FW1, ENE_FW1_ENABLE | ENE_FW1_IRQ);

 ir_raw_event_set_idle(dev->rdev, 1);
 dev->rx_enabled = 0;
}
