
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_entry {unsigned short vlan_id; int vlan_list; } ;
struct bonding {TYPE_1__* dev; int lock; int vlan_list; } ;
struct TYPE_2__ {char* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct vlan_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,...) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int bond_add_vlan(struct bonding *bond, unsigned short vlan_id)
{
 struct vlan_entry *vlan;

 pr_debug("bond: %s, vlan id %d\n",
  (bond ? bond->dev->name : "None"), vlan_id);

 vlan = kzalloc(sizeof(struct vlan_entry), GFP_KERNEL);
 if (!vlan)
  return -ENOMEM;

 INIT_LIST_HEAD(&vlan->vlan_list);
 vlan->vlan_id = vlan_id;

 write_lock_bh(&bond->lock);

 list_add_tail(&vlan->vlan_list, &bond->vlan_list);

 write_unlock_bh(&bond->lock);

 pr_debug("added VLAN ID %d on bond %s\n", vlan_id, bond->dev->name);

 return 0;
}
