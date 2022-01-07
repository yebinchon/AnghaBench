
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spitzkbd {int lock; int timer; int input; scalar_t__ suspend_jiffies; int * keycode; scalar_t__ suspended; } ;


 int EV_PWR ;
 int GPIO_bit (int ) ;
 int GPLR (int ) ;
 int KB_ACTIVATE_DELAY ;
 unsigned int KB_COLS ;
 int KB_DISCHARGE_DELAY ;
 unsigned int KB_ROWMASK (unsigned int) ;
 unsigned int KB_ROWS ;
 int KEY_SUSPEND ;
 unsigned int SCANCODE (unsigned int,unsigned int) ;
 int SCAN_INTERVAL ;
 int SPITZ_GPIO_ON_KEY ;
 int SPITZ_GPIO_SYNC ;
 int SPITZ_KEY_SYNC ;
 int input_event (int ,int ,int ,int) ;
 int input_report_key (int ,int ,unsigned int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spitzkbd_activate_all () ;
 int spitzkbd_activate_col (unsigned int) ;
 int spitzkbd_discharge_all () ;
 unsigned int spitzkbd_get_row_status (unsigned int) ;
 int spitzkbd_reset_col (unsigned int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void spitzkbd_scankeyboard(struct spitzkbd *spitzkbd_data)
{
 unsigned int row, col, rowd;
 unsigned long flags;
 unsigned int num_pressed, pwrkey = ((GPLR(SPITZ_GPIO_ON_KEY) & GPIO_bit(SPITZ_GPIO_ON_KEY)) != 0);

 if (spitzkbd_data->suspended)
  return;

 spin_lock_irqsave(&spitzkbd_data->lock, flags);

 num_pressed = 0;
 for (col = 0; col < KB_COLS; col++) {





  spitzkbd_discharge_all();
  udelay(KB_DISCHARGE_DELAY);

  spitzkbd_activate_col(col);
  udelay(KB_ACTIVATE_DELAY);

  rowd = spitzkbd_get_row_status(col);
  for (row = 0; row < KB_ROWS; row++) {
   unsigned int scancode, pressed;

   scancode = SCANCODE(row, col);
   pressed = rowd & KB_ROWMASK(row);

   input_report_key(spitzkbd_data->input, spitzkbd_data->keycode[scancode], pressed);

   if (pressed)
    num_pressed++;
  }
  spitzkbd_reset_col(col);
 }

 spitzkbd_activate_all();

 input_report_key(spitzkbd_data->input, SPITZ_KEY_SYNC, (GPLR(SPITZ_GPIO_SYNC) & GPIO_bit(SPITZ_GPIO_SYNC)) != 0 );
 input_report_key(spitzkbd_data->input, KEY_SUSPEND, pwrkey);

 if (pwrkey && time_after(jiffies, spitzkbd_data->suspend_jiffies + msecs_to_jiffies(1000))) {
  input_event(spitzkbd_data->input, EV_PWR, KEY_SUSPEND, 1);
  spitzkbd_data->suspend_jiffies = jiffies;
 }

 input_sync(spitzkbd_data->input);


 if (num_pressed)
  mod_timer(&spitzkbd_data->timer, jiffies + msecs_to_jiffies(SCAN_INTERVAL));

 spin_unlock_irqrestore(&spitzkbd_data->lock, flags);
}
