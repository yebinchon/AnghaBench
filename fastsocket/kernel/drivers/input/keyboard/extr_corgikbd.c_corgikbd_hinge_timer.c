
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgikbd {int htimer; int lock; int input; } ;
struct TYPE_2__ {int dev; } ;


 int CORGI_GPIO_AK_INT ;
 unsigned long CORGI_SCP_SWA ;
 unsigned long CORGI_SCP_SWB ;
 int HINGE_SCAN_INTERVAL ;
 scalar_t__ HINGE_STABLE_COUNT ;
 scalar_t__ READ_GPIO_BIT (int ) ;
 int SCOOP_GPRR ;
 int SW_HEADPHONE_INSERT ;
 int SW_LID ;
 int SW_TABLET_MODE ;
 TYPE_1__ corgiscoop_device ;
 scalar_t__ hinge_count ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 unsigned long read_scoop_reg (int *,int ) ;
 unsigned long sharpsl_hinge_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void corgikbd_hinge_timer(unsigned long data)
{
 struct corgikbd *corgikbd_data = (struct corgikbd *) data;
 unsigned long gprr;
 unsigned long flags;

 gprr = read_scoop_reg(&corgiscoop_device.dev, SCOOP_GPRR) & (CORGI_SCP_SWA | CORGI_SCP_SWB);
 gprr |= (READ_GPIO_BIT(CORGI_GPIO_AK_INT) != 0);
 if (gprr != sharpsl_hinge_state) {
  hinge_count = 0;
  sharpsl_hinge_state = gprr;
 } else if (hinge_count < HINGE_STABLE_COUNT) {
  hinge_count++;
  if (hinge_count >= HINGE_STABLE_COUNT) {
   spin_lock_irqsave(&corgikbd_data->lock, flags);

   input_report_switch(corgikbd_data->input, SW_LID, ((sharpsl_hinge_state & CORGI_SCP_SWA) != 0));
   input_report_switch(corgikbd_data->input, SW_TABLET_MODE, ((sharpsl_hinge_state & CORGI_SCP_SWB) != 0));
   input_report_switch(corgikbd_data->input, SW_HEADPHONE_INSERT, (READ_GPIO_BIT(CORGI_GPIO_AK_INT) != 0));
   input_sync(corgikbd_data->input);

   spin_unlock_irqrestore(&corgikbd_data->lock, flags);
  }
 }
 mod_timer(&corgikbd_data->htimer, jiffies + msecs_to_jiffies(HINGE_SCAN_INTERVAL));
}
