
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ene_device {scalar_t__ hw_revision; } ;


 int ENEB_IRQ_STATUS ;
 int ENEB_IRQ_STATUS_IR ;
 int ENE_FW1 ;
 int ENE_FW1_TXIRQ ;
 int ENE_FW2 ;
 int ENE_FW2_RXIRQ ;
 scalar_t__ ENE_HW_C ;
 int ENE_IRQ ;
 int ENE_IRQ_RX ;
 int ENE_IRQ_STATUS ;
 int ENE_IRQ_TX ;
 int ene_clear_reg_mask (struct ene_device*,int ,int) ;
 int ene_read_reg (struct ene_device*,int ) ;
 int ene_write_reg (struct ene_device*,int ,int) ;

__attribute__((used)) static int ene_irq_status(struct ene_device *dev)
{
 u8 irq_status;
 u8 fw_flags1, fw_flags2;
 int retval = 0;

 fw_flags2 = ene_read_reg(dev, ENE_FW2);

 if (dev->hw_revision < ENE_HW_C) {
  irq_status = ene_read_reg(dev, ENEB_IRQ_STATUS);

  if (!(irq_status & ENEB_IRQ_STATUS_IR))
   return 0;

  ene_clear_reg_mask(dev, ENEB_IRQ_STATUS, ENEB_IRQ_STATUS_IR);
  return ENE_IRQ_RX;
 }

 irq_status = ene_read_reg(dev, ENE_IRQ);
 if (!(irq_status & ENE_IRQ_STATUS))
  return 0;


 ene_write_reg(dev, ENE_IRQ, irq_status & ~ENE_IRQ_STATUS);
 ene_write_reg(dev, ENE_IRQ, irq_status & ~ENE_IRQ_STATUS);


 if (fw_flags2 & ENE_FW2_RXIRQ) {
  retval |= ENE_IRQ_RX;
  ene_write_reg(dev, ENE_FW2, fw_flags2 & ~ENE_FW2_RXIRQ);
 }


 fw_flags1 = ene_read_reg(dev, ENE_FW1);
 if (fw_flags1 & ENE_FW1_TXIRQ) {
  ene_write_reg(dev, ENE_FW1, fw_flags1 & ~ENE_FW1_TXIRQ);
  retval |= ENE_IRQ_TX;
 }

 return retval;
}
