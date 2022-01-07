
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {int list; int remote_vni; int remote_ip; } ;
struct vxlan_fdb {int remotes; int state; } ;
struct vxlan_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be32 ;


 int INIT_LIST_HEAD (int *) ;
 int NUD_STALE ;
 int RTM_GETNEIGH ;
 int VXLAN_N_VID ;
 int list_add_rcu (int *,int *) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,int ) ;

__attribute__((used)) static void vxlan_ip_miss(struct net_device *dev, __be32 ipa)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_fdb f = {
  .state = NUD_STALE,
 };
 struct vxlan_rdst remote = {
  .remote_ip = ipa,
  .remote_vni = VXLAN_N_VID,
 };

 INIT_LIST_HEAD(&f.remotes);
 list_add_rcu(&remote.list, &f.remotes);

 vxlan_fdb_notify(vxlan, &f, RTM_GETNEIGH);
}
