
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ene_device {scalar_t__ hw_revision; int irq; int rx_enabled; int rdev; int rx_fan_input_inuse; } ;


 int ENEB_IRQ ;
 int ENEB_IRQ_UNK1 ;
 int ENE_FW1 ;
 int ENE_FW1_ENABLE ;
 int ENE_FW1_IRQ ;
 scalar_t__ ENE_HW_C ;
 int ENE_IRQ ;
 int ENE_IRQ_MASK ;
 int ENE_IRQ_STATUS ;
 int ENE_IRQ_UNK_EN ;
 int ene_irq_status (struct ene_device*) ;
 int ene_read_reg (struct ene_device*,int ) ;
 int ene_rx_enable_cir_engine (struct ene_device*,int) ;
 int ene_rx_enable_fan_input (struct ene_device*,int ) ;
 int ene_set_reg_mask (struct ene_device*,int ,int) ;
 int ene_write_reg (struct ene_device*,int ,int) ;
 int ir_raw_event_set_idle (int ,int) ;

__attribute__((used)) static void ene_rx_enable(struct ene_device *dev)
{
 u8 reg_value;


 if (dev->hw_revision < ENE_HW_C) {
  ene_write_reg(dev, ENEB_IRQ, dev->irq << 1);
  ene_write_reg(dev, ENEB_IRQ_UNK1, 0x01);
 } else {
  reg_value = ene_read_reg(dev, ENE_IRQ) & 0xF0;
  reg_value |= ENE_IRQ_UNK_EN;
  reg_value &= ~ENE_IRQ_STATUS;
  reg_value |= (dev->irq & ENE_IRQ_MASK);
  ene_write_reg(dev, ENE_IRQ, reg_value);
 }


 ene_rx_enable_fan_input(dev, dev->rx_fan_input_inuse);
 ene_rx_enable_cir_engine(dev, !dev->rx_fan_input_inuse);


 ene_irq_status(dev);


 ene_set_reg_mask(dev, ENE_FW1, ENE_FW1_ENABLE | ENE_FW1_IRQ);


 ir_raw_event_set_idle(dev->rdev, 1);
 dev->rx_enabled = 1;
}
