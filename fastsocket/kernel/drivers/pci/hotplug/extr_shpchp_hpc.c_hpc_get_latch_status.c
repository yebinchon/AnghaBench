
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slot {int hp_slot; struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int MRL_SENSOR ;
 int SLOT_REG (int ) ;
 int shpc_readl (struct controller*,int ) ;

__attribute__((used)) static int hpc_get_latch_status(struct slot *slot, u8 *status)
{
 struct controller *ctrl = slot->ctrl;
 u32 slot_reg = shpc_readl(ctrl, SLOT_REG(slot->hp_slot));

 *status = !!(slot_reg & MRL_SENSOR);

 return 0;
}
