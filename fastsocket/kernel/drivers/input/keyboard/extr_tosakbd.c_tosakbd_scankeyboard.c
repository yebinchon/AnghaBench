
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosakbd {int lock; int timer; int input; int * keycode; scalar_t__ suspended; } ;
struct platform_device {int dev; } ;


 unsigned int GET_ROWS_STATUS (unsigned int) ;
 int KB_ACTIVATE_DELAY ;
 int KB_DISCHARGE_DELAY ;
 unsigned int KB_ROWMASK (unsigned int) ;
 unsigned int SCANCODE (unsigned int,unsigned int) ;
 scalar_t__ SCAN_INTERVAL ;
 unsigned int TOSA_KEY_SENSE_NUM ;
 unsigned int TOSA_KEY_STROBE_NUM ;
 int dev_warn (int *,char*,unsigned int) ;
 int input_report_key (int ,int ,unsigned int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct tosakbd* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tosakbd_activate_all () ;
 int tosakbd_activate_col (unsigned int) ;
 int tosakbd_discharge_all () ;
 int tosakbd_reset_col (unsigned int) ;
 int udelay (int ) ;

__attribute__((used)) static void tosakbd_scankeyboard(struct platform_device *dev)
{
 struct tosakbd *tosakbd = platform_get_drvdata(dev);
 unsigned int row, col, rowd;
 unsigned long flags;
 unsigned int num_pressed = 0;

 spin_lock_irqsave(&tosakbd->lock, flags);

 if (tosakbd->suspended)
  goto out;

 for (col = 0; col < TOSA_KEY_STROBE_NUM; col++) {




  tosakbd_discharge_all();
  udelay(KB_DISCHARGE_DELAY);

  tosakbd_activate_col(col);
  udelay(KB_ACTIVATE_DELAY);

  rowd = GET_ROWS_STATUS(col);

  for (row = 0; row < TOSA_KEY_SENSE_NUM; row++) {
   unsigned int scancode, pressed;
   scancode = SCANCODE(row, col);
   pressed = rowd & KB_ROWMASK(row);

   if (pressed && !tosakbd->keycode[scancode])
    dev_warn(&dev->dev,
      "unhandled scancode: 0x%02x\n",
      scancode);

   input_report_key(tosakbd->input,
     tosakbd->keycode[scancode],
     pressed);
   if (pressed)
    num_pressed++;
  }

  tosakbd_reset_col(col);
 }

 tosakbd_activate_all();

 input_sync(tosakbd->input);


 if (num_pressed)
  mod_timer(&tosakbd->timer, jiffies + SCAN_INTERVAL);

 out:
 spin_unlock_irqrestore(&tosakbd->lock, flags);
}
