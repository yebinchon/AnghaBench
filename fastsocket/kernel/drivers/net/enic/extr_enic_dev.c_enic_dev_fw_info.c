
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_devcmd_fw_info {int dummy; } ;
struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vnic_dev_fw_info (int ,struct vnic_devcmd_fw_info**) ;

int enic_dev_fw_info(struct enic *enic, struct vnic_devcmd_fw_info **fw_info)
{
 int err;

 spin_lock(&enic->devcmd_lock);
 err = vnic_dev_fw_info(enic->vdev, fw_info);
 spin_unlock(&enic->devcmd_lock);

 return err;
}
