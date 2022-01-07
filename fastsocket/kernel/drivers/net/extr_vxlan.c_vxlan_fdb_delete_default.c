
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int hash_lock; } ;


 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int ) ;
 int all_zeros_mac ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_fdb_destroy (struct vxlan_dev*,struct vxlan_fdb*) ;

__attribute__((used)) static void vxlan_fdb_delete_default(struct vxlan_dev *vxlan)
{
 struct vxlan_fdb *f;

 spin_lock_bh(&vxlan->hash_lock);
 f = __vxlan_find_mac(vxlan, all_zeros_mac);
 if (f)
  vxlan_fdb_destroy(vxlan, f);
 spin_unlock_bh(&vxlan->hash_lock);
}
