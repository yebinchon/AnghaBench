
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {int hp_slot; struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int SLOT_REG (int ) ;


 int SLOT_STATE_MASK ;

 int SLOT_STATE_SHIFT ;
 int shpc_readl (struct controller*,int ) ;

__attribute__((used)) static int hpc_get_power_status(struct slot * slot, u8 *status)
{
 struct controller *ctrl = slot->ctrl;
 u32 slot_reg = shpc_readl(ctrl, SLOT_REG(slot->hp_slot));
 u8 state = (slot_reg & SLOT_STATE_MASK) >> SLOT_STATE_SHIFT;

 switch (state) {
 case 128:
  *status = 2;
  break;
 case 129:
  *status = 1;
  break;
 case 130:
  *status = 0;
  break;
 default:
  *status = 0xFF;
  break;
 }

 return 0;
}
