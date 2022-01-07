
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fnic {int vdev; } ;


 int vnic_dev_set_default_vlan (int ,int ) ;

__attribute__((used)) static void fnic_set_vlan(struct fnic *fnic, u16 vlan_id)
{
 u16 old_vlan;
 old_vlan = vnic_dev_set_default_vlan(fnic->vdev, vlan_id);
}
