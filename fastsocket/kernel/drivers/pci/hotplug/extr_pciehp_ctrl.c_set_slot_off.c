
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int dummy; } ;
struct controller {int dummy; } ;


 scalar_t__ ATTN_LED (struct controller*) ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 scalar_t__ PWR_LED (struct controller*) ;
 int ctrl_err (struct controller*,char*) ;
 int msleep (int) ;
 int pciehp_green_led_off (struct slot*) ;
 scalar_t__ pciehp_power_off_slot (struct slot*) ;
 scalar_t__ pciehp_set_attention_status (struct slot*,int) ;

__attribute__((used)) static void set_slot_off(struct controller *ctrl, struct slot * pslot)
{

 if (POWER_CTRL(ctrl)) {
  if (pciehp_power_off_slot(pslot)) {
   ctrl_err(ctrl,
     "Issue of Slot Power Off command failed\n");
   return;
  }





  msleep(1000);
 }

 if (PWR_LED(ctrl))
  pciehp_green_led_off(pslot);

 if (ATTN_LED(ctrl)) {
  if (pciehp_set_attention_status(pslot, 1)) {
   ctrl_err(ctrl,
     "Issue of Set Attention Led command failed\n");
   return;
  }
 }
}
