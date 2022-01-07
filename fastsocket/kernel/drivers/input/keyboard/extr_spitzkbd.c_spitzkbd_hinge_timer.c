
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spitzkbd {int htimer; int lock; int input; } ;


 unsigned long GPIO_bit (int ) ;
 unsigned long GPLR (int ) ;
 int HINGE_SCAN_INTERVAL ;
 scalar_t__ HINGE_STABLE_COUNT ;
 int SPITZ_GPIO_AK_INT ;
 int SPITZ_GPIO_SWA ;
 int SPITZ_GPIO_SWB ;
 int SW_HEADPHONE_INSERT ;
 int SW_LID ;
 int SW_TABLET_MODE ;
 scalar_t__ hinge_count ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 unsigned long sharpsl_hinge_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void spitzkbd_hinge_timer(unsigned long data)
{
 struct spitzkbd *spitzkbd_data = (struct spitzkbd *) data;
 unsigned long state;
 unsigned long flags;

 state = GPLR(SPITZ_GPIO_SWA) & (GPIO_bit(SPITZ_GPIO_SWA)|GPIO_bit(SPITZ_GPIO_SWB));
 state |= (GPLR(SPITZ_GPIO_AK_INT) & GPIO_bit(SPITZ_GPIO_AK_INT));
 if (state != sharpsl_hinge_state) {
  hinge_count = 0;
  sharpsl_hinge_state = state;
 } else if (hinge_count < HINGE_STABLE_COUNT) {
  hinge_count++;
 }

 if (hinge_count >= HINGE_STABLE_COUNT) {
  spin_lock_irqsave(&spitzkbd_data->lock, flags);

  input_report_switch(spitzkbd_data->input, SW_LID, ((GPLR(SPITZ_GPIO_SWA) & GPIO_bit(SPITZ_GPIO_SWA)) != 0));
  input_report_switch(spitzkbd_data->input, SW_TABLET_MODE, ((GPLR(SPITZ_GPIO_SWB) & GPIO_bit(SPITZ_GPIO_SWB)) != 0));
  input_report_switch(spitzkbd_data->input, SW_HEADPHONE_INSERT, ((GPLR(SPITZ_GPIO_AK_INT) & GPIO_bit(SPITZ_GPIO_AK_INT)) != 0));
  input_sync(spitzkbd_data->input);

  spin_unlock_irqrestore(&spitzkbd_data->lock, flags);
 } else {
  mod_timer(&spitzkbd_data->htimer, jiffies + msecs_to_jiffies(HINGE_SCAN_INTERVAL));
 }
}
