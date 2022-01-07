
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int stats; struct vxlan_sock* vn_sock; } ;
struct net_device {int dummy; } ;


 int free_percpu (int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int vxlan_fdb_delete_default (struct vxlan_dev*) ;
 int vxlan_sock_release (struct vxlan_sock*) ;

__attribute__((used)) static void vxlan_uninit(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_sock *vs = vxlan->vn_sock;

 vxlan_fdb_delete_default(vxlan);

 if (vs)
  vxlan_sock_release(vs);
 free_percpu(vxlan->stats);
}
