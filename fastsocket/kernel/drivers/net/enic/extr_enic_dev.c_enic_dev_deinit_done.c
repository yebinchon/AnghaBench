
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vnic_dev_deinit_done (int ,int*) ;

int enic_dev_deinit_done(struct enic *enic, int *status)
{
 int err;

 spin_lock(&enic->devcmd_lock);
 err = vnic_dev_deinit_done(enic->vdev, status);
 spin_unlock(&enic->devcmd_lock);

 return err;
}
