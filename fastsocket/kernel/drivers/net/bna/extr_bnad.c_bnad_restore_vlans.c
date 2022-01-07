
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct bnad {int bna_lock; TYPE_1__* rx_info; int vlan_grp; } ;
struct TYPE_2__ {int rx; } ;


 scalar_t__ VLAN_GROUP_ARRAY_LEN ;
 int bna_rx_vlan_add (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vlan_group_get_device (int ,scalar_t__) ;

void
bnad_restore_vlans(struct bnad *bnad, u32 rx_id)
{
 u16 vlan_id;
 unsigned long flags;

 if (!bnad->vlan_grp)
  return;

 for (vlan_id = 0; vlan_id < VLAN_GROUP_ARRAY_LEN; vlan_id++) {
  if (!vlan_group_get_device(bnad->vlan_grp, vlan_id))
   continue;
  spin_lock_irqsave(&bnad->bna_lock, flags);
  bna_rx_vlan_add(bnad->rx_info[rx_id].rx, vlan_id);
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
 }
}
