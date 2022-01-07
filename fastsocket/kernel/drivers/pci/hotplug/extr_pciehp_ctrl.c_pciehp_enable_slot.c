
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ MRL_SENS (struct controller*) ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int board_added (struct slot*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_adapter_status (struct slot*,scalar_t__*) ;
 int pciehp_get_latch_status (struct slot*,scalar_t__*) ;
 int pciehp_get_power_status (struct slot*,scalar_t__*) ;
 int slot_name (struct slot*) ;
 int update_slot_info (struct slot*) ;

int pciehp_enable_slot(struct slot *p_slot)
{
 u8 getstatus = 0;
 int rc;
 struct controller *ctrl = p_slot->ctrl;

 rc = pciehp_get_adapter_status(p_slot, &getstatus);
 if (rc || !getstatus) {
  ctrl_info(ctrl, "No adapter on slot(%s)\n", slot_name(p_slot));
  return -ENODEV;
 }
 if (MRL_SENS(p_slot->ctrl)) {
  rc = pciehp_get_latch_status(p_slot, &getstatus);
  if (rc || getstatus) {
   ctrl_info(ctrl, "Latch open on slot(%s)\n",
      slot_name(p_slot));
   return -ENODEV;
  }
 }

 if (POWER_CTRL(p_slot->ctrl)) {
  rc = pciehp_get_power_status(p_slot, &getstatus);
  if (rc || getstatus) {
   ctrl_info(ctrl, "Already enabled on slot(%s)\n",
      slot_name(p_slot));
   return -EINVAL;
  }
 }

 pciehp_get_latch_status(p_slot, &getstatus);

 rc = board_added(p_slot);
 if (rc) {
  pciehp_get_latch_status(p_slot, &getstatus);
 }

 update_slot_info(p_slot);

 return rc;
}
