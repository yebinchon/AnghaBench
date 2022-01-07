
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vic_provinfo {int dummy; } ;
struct enic {int devcmd_lock; int vdev; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vic_provinfo_size (struct vic_provinfo*) ;
 int vnic_dev_init_prov2 (int ,int *,int ) ;

int enic_dev_init_prov2(struct enic *enic, struct vic_provinfo *vp)
{
 int err;

 spin_lock(&enic->devcmd_lock);
 err = vnic_dev_init_prov2(enic->vdev,
  (u8 *)vp, vic_provinfo_size(vp));
 spin_unlock(&enic->devcmd_lock);

 return err;
}
