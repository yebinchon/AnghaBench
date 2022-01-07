
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vnic_dev_del_addr (int ,int *) ;

int enic_dev_del_addr(struct enic *enic, u8 *addr)
{
 int err;

 spin_lock(&enic->devcmd_lock);
 err = vnic_dev_del_addr(enic->vdev, addr);
 spin_unlock(&enic->devcmd_lock);

 return err;
}
