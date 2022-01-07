
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_fdb {int rcu; int hlist; int eth_addr; } ;
struct vxlan_dev {int addrcnt; int dev; } ;


 int RTM_DELNEIGH ;
 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int netdev_dbg (int ,char*,int ) ;
 int vxlan_fdb_free ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,int ) ;

__attribute__((used)) static void vxlan_fdb_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f)
{
 netdev_dbg(vxlan->dev,
      "delete %pM\n", f->eth_addr);

 --vxlan->addrcnt;
 vxlan_fdb_notify(vxlan, f, RTM_DELNEIGH);

 hlist_del_rcu(&f->hlist);
 call_rcu(&f->rcu, vxlan_fdb_free);
}
