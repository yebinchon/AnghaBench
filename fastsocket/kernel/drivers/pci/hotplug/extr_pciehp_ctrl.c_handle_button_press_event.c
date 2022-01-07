
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int state; int work; struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int ATTN_LED (struct controller*) ;


 int HZ ;


 int PWR_LED (struct controller*) ;

 int cancel_delayed_work (int *) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int ctrl_warn (struct controller*,char*) ;
 int pciehp_get_power_status (struct slot*,int *) ;
 int pciehp_green_led_blink (struct slot*) ;
 int pciehp_green_led_off (struct slot*) ;
 int pciehp_green_led_on (struct slot*) ;
 int pciehp_set_attention_status (struct slot*,int ) ;
 int schedule_delayed_work (int *,int) ;
 int slot_name (struct slot*) ;
 int update_slot_info (struct slot*) ;

__attribute__((used)) static void handle_button_press_event(struct slot *p_slot)
{
 struct controller *ctrl = p_slot->ctrl;
 u8 getstatus;

 switch (p_slot->state) {
 case 128:
  pciehp_get_power_status(p_slot, &getstatus);
  if (getstatus) {
   p_slot->state = 132;
   ctrl_info(ctrl,
      "PCI slot #%s - powering off due to button "
      "press.\n", slot_name(p_slot));
  } else {
   p_slot->state = 131;
   ctrl_info(ctrl,
      "PCI slot #%s - powering on due to button "
      "press.\n", slot_name(p_slot));
  }

  if (PWR_LED(ctrl))
   pciehp_green_led_blink(p_slot);
  if (ATTN_LED(ctrl))
   pciehp_set_attention_status(p_slot, 0);

  schedule_delayed_work(&p_slot->work, 5*HZ);
  break;
 case 132:
 case 131:





  ctrl_info(ctrl, "Button cancel on Slot(%s)\n", slot_name(p_slot));
  cancel_delayed_work(&p_slot->work);
  if (p_slot->state == 132) {
   if (PWR_LED(ctrl))
    pciehp_green_led_on(p_slot);
  } else {
   if (PWR_LED(ctrl))
    pciehp_green_led_off(p_slot);
  }
  if (ATTN_LED(ctrl))
   pciehp_set_attention_status(p_slot, 0);
  ctrl_info(ctrl, "PCI slot #%s - action canceled "
     "due to button press\n", slot_name(p_slot));
  p_slot->state = 128;
  break;
 case 130:
 case 129:





  ctrl_info(ctrl, "Button ignore on Slot(%s)\n", slot_name(p_slot));
  update_slot_info(p_slot);
  break;
 default:
  ctrl_warn(ctrl, "Not a valid state\n");
  break;
 }
}
