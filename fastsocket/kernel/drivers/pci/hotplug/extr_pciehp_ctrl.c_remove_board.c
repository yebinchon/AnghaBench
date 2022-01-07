
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 scalar_t__ POWER_CTRL (struct controller*) ;
 scalar_t__ PWR_LED (struct controller*) ;
 int ctrl_err (struct controller*,char*) ;
 int msleep (int) ;
 int pciehp_green_led_off (struct slot*) ;
 int pciehp_power_off_slot (struct slot*) ;
 int pciehp_unconfigure_device (struct slot*) ;

__attribute__((used)) static int remove_board(struct slot *p_slot)
{
 int retval = 0;
 struct controller *ctrl = p_slot->ctrl;

 retval = pciehp_unconfigure_device(p_slot);
 if (retval)
  return retval;

 if (POWER_CTRL(ctrl)) {

  retval = pciehp_power_off_slot(p_slot);
  if (retval) {
   ctrl_err(ctrl,
     "Issue of Slot Disable command failed\n");
   return retval;
  }





  msleep(1000);
 }


 if (PWR_LED(ctrl))
  pciehp_green_led_off(p_slot);

 return 0;
}
