
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vnic_dev_enable2 (int ,int) ;

int enic_dev_enable2(struct enic *enic, int active)
{
 int err;

 spin_lock(&enic->devcmd_lock);
 err = vnic_dev_enable2(enic->vdev, active);
 spin_unlock(&enic->devcmd_lock);

 return err;
}
