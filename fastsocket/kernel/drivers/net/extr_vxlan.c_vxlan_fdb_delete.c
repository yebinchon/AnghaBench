
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlan_rdst {int rcu; int list; } ;
struct vxlan_fdb {int remotes; } ;
struct vxlan_dev {int hash_lock; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
typedef scalar_t__ __be32 ;
typedef int __be16 ;


 int ENOENT ;
 int INADDR_ANY ;
 int call_rcu (int *,int ) ;
 scalar_t__ htonl (int ) ;
 int list_del_rcu (int *) ;
 int list_is_singular (int *) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_fdb_destroy (struct vxlan_dev*,struct vxlan_fdb*) ;
 struct vxlan_rdst* vxlan_fdb_find_rdst (struct vxlan_fdb*,scalar_t__,int ,int ,int ) ;
 int vxlan_fdb_free_rdst ;
 int vxlan_fdb_parse (struct nlattr**,struct vxlan_dev*,scalar_t__*,int *,int *,int *) ;
 struct vxlan_fdb* vxlan_find_mac (struct vxlan_dev*,unsigned char const*) ;

__attribute__((used)) static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
       struct net_device *dev,
       const unsigned char *addr)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_fdb *f;
 struct vxlan_rdst *rd = ((void*)0);
 __be32 ip;
 __be16 port;
 u32 vni, ifindex;
 int err;

 err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &vni, &ifindex);
 if (err)
  return err;

 err = -ENOENT;

 spin_lock_bh(&vxlan->hash_lock);
 f = vxlan_find_mac(vxlan, addr);
 if (!f)
  goto out;

 if (ip != htonl(INADDR_ANY)) {
  rd = vxlan_fdb_find_rdst(f, ip, port, vni, ifindex);
  if (!rd)
   goto out;
 }

 err = 0;




 if (rd && !list_is_singular(&f->remotes)) {
  list_del_rcu(&rd->list);
  call_rcu(&rd->rcu, vxlan_fdb_free_rdst);
  goto out;
 }

 vxlan_fdb_destroy(vxlan, f);

out:
 spin_unlock_bh(&vxlan->hash_lock);

 return err;
}
