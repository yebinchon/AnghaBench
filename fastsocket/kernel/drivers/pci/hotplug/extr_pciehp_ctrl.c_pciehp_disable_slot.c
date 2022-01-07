
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int HP_SUPR_RM (struct controller*) ;
 scalar_t__ MRL_SENS (struct controller*) ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_adapter_status (struct slot*,scalar_t__*) ;
 int pciehp_get_latch_status (struct slot*,scalar_t__*) ;
 int pciehp_get_power_status (struct slot*,scalar_t__*) ;
 int remove_board (struct slot*) ;
 int slot_name (struct slot*) ;
 int update_slot_info (struct slot*) ;

int pciehp_disable_slot(struct slot *p_slot)
{
 u8 getstatus = 0;
 int ret = 0;
 struct controller *ctrl = p_slot->ctrl;

 if (!p_slot->ctrl)
  return 1;

 if (!HP_SUPR_RM(p_slot->ctrl)) {
  ret = pciehp_get_adapter_status(p_slot, &getstatus);
  if (ret || !getstatus) {
   ctrl_info(ctrl, "No adapter on slot(%s)\n",
      slot_name(p_slot));
   return -ENODEV;
  }
 }

 if (MRL_SENS(p_slot->ctrl)) {
  ret = pciehp_get_latch_status(p_slot, &getstatus);
  if (ret || getstatus) {
   ctrl_info(ctrl, "Latch open on slot(%s)\n",
      slot_name(p_slot));
   return -ENODEV;
  }
 }

 if (POWER_CTRL(p_slot->ctrl)) {
  ret = pciehp_get_power_status(p_slot, &getstatus);
  if (ret || !getstatus) {
   ctrl_info(ctrl, "Already disabled on slot(%s)\n",
      slot_name(p_slot));
   return -EINVAL;
  }
 }

 ret = remove_board(p_slot);
 update_slot_info(p_slot);

 return ret;
}
