
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ams_irq { ____Placeholder_ams_irq } ams_irq ;


 int AMS_CTRLX ;
 int AMS_CTRLY ;
 int AMS_CTRLZ ;
 int AMS_IRQ_FREEFALL ;
 int AMS_IRQ_GLOBAL ;
 int AMS_IRQ_SHOCK ;
 int ams_i2c_read (int ) ;
 int ams_i2c_write (int ,int) ;

__attribute__((used)) static void ams_i2c_set_irq(enum ams_irq reg, char enable)
{
 if (reg & AMS_IRQ_FREEFALL) {
  u8 val = ams_i2c_read(AMS_CTRLX);
  if (enable)
   val |= 0x80;
  else
   val &= ~0x80;
  ams_i2c_write(AMS_CTRLX, val);
 }

 if (reg & AMS_IRQ_SHOCK) {
  u8 val = ams_i2c_read(AMS_CTRLY);
  if (enable)
   val |= 0x80;
  else
   val &= ~0x80;
  ams_i2c_write(AMS_CTRLY, val);
 }

 if (reg & AMS_IRQ_GLOBAL) {
  u8 val = ams_i2c_read(AMS_CTRLZ);
  if (enable)
   val |= 0x80;
  else
   val &= ~0x80;
  ams_i2c_write(AMS_CTRLZ, val);
 }
}
