
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int PWR_PWRON_IRQ ;
 int STS_HW_CONDITIONS ;
 int TWL4030_MODULE_PM_MASTER ;
 int dev_err (int ,char*,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int local_irq_enable () ;
 int twl4030_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static irqreturn_t powerbutton_irq(int irq, void *_pwr)
{
 struct input_dev *pwr = _pwr;
 int err;
 u8 value;
 err = twl4030_i2c_read_u8(TWL4030_MODULE_PM_MASTER, &value,
      STS_HW_CONDITIONS);
 if (!err) {
  input_report_key(pwr, KEY_POWER, value & PWR_PWRON_IRQ);
  input_sync(pwr);
 } else {
  dev_err(pwr->dev.parent, "twl4030: i2c error %d while reading"
   " TWL4030 PM_MASTER STS_HW_CONDITIONS register\n", err);
 }

 return IRQ_HANDLED;
}
