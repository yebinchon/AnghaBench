
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slot {int state; TYPE_1__* hpc_ops; int work; struct controller* ctrl; } ;
struct controller {int dummy; } ;
struct TYPE_2__ {int (* set_attention_status ) (struct slot*,int ) ;int (* green_led_off ) (struct slot*) ;int (* green_led_on ) (struct slot*) ;int (* green_led_blink ) (struct slot*) ;int (* get_power_status ) (struct slot*,int *) ;} ;




 int HZ ;



 int cancel_delayed_work (int *) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int ctrl_warn (struct controller*,char*) ;
 int schedule_delayed_work (int *,int) ;
 int slot_name (struct slot*) ;
 int stub1 (struct slot*,int *) ;
 int stub2 (struct slot*) ;
 int stub3 (struct slot*,int ) ;
 int stub4 (struct slot*) ;
 int stub5 (struct slot*) ;
 int stub6 (struct slot*,int ) ;
 int update_slot_info (struct slot*) ;

__attribute__((used)) static void handle_button_press_event(struct slot *p_slot)
{
 u8 getstatus;
 struct controller *ctrl = p_slot->ctrl;

 switch (p_slot->state) {
 case 128:
  p_slot->hpc_ops->get_power_status(p_slot, &getstatus);
  if (getstatus) {
   p_slot->state = 132;
   ctrl_info(ctrl, "PCI slot #%s - powering off due to "
      "button press.\n", slot_name(p_slot));
  } else {
   p_slot->state = 131;
   ctrl_info(ctrl, "PCI slot #%s - powering on due to "
      "button press.\n", slot_name(p_slot));
  }

  p_slot->hpc_ops->green_led_blink(p_slot);
  p_slot->hpc_ops->set_attention_status(p_slot, 0);

  schedule_delayed_work(&p_slot->work, 5*HZ);
  break;
 case 132:
 case 131:





  ctrl_info(ctrl, "Button cancel on Slot(%s)\n",
     slot_name(p_slot));
  cancel_delayed_work(&p_slot->work);
  if (p_slot->state == 132)
   p_slot->hpc_ops->green_led_on(p_slot);
  else
   p_slot->hpc_ops->green_led_off(p_slot);
  p_slot->hpc_ops->set_attention_status(p_slot, 0);
  ctrl_info(ctrl, "PCI slot #%s - action canceled due to "
     "button press\n", slot_name(p_slot));
  p_slot->state = 128;
  break;
 case 130:
 case 129:





  ctrl_info(ctrl, "Button ignore on Slot(%s)\n",
     slot_name(p_slot));
  update_slot_info(p_slot);
  break;
 default:
  ctrl_warn(ctrl, "Not a valid state\n");
  break;
 }
}
