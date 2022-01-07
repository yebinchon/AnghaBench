
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct pm {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 size_t PM_MAX_LENGTH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 struct pm* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t pm_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct pm *pm = serio_get_drvdata(serio);
 struct input_dev *dev = pm->dev;

 pm->data[pm->idx] = data;

 if (pm->data[0] & 0x80) {
  if (PM_MAX_LENGTH == ++pm->idx) {
   input_report_abs(dev, ABS_X, pm->data[2] * 128 + pm->data[1]);
   input_report_abs(dev, ABS_Y, pm->data[4] * 128 + pm->data[3]);
   input_report_key(dev, BTN_TOUCH, !!(pm->data[0] & 0x40));
   input_sync(dev);
   pm->idx = 0;
  }
 }

 return IRQ_HANDLED;
}
