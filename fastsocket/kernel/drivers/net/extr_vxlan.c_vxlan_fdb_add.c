
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vxlan_dev {int hash_lock; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int ndm_state; int ndm_flags; } ;
typedef int __be32 ;
typedef int __be16 ;


 int EINVAL ;
 size_t NDA_DST ;
 int NUD_PERMANENT ;
 int NUD_REACHABLE ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int pr_info (char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_fdb_create (struct vxlan_dev*,unsigned char const*,int ,int,int ,int ,int ,int ,int ) ;
 int vxlan_fdb_parse (struct nlattr**,struct vxlan_dev*,int *,int *,int *,int *) ;

__attribute__((used)) static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
    struct net_device *dev,
    const unsigned char *addr, u16 flags)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);

 __be32 ip;
 __be16 port;
 u32 vni, ifindex;
 int err;

 if (!(ndm->ndm_state & (NUD_PERMANENT|NUD_REACHABLE))) {
  pr_info("RTM_NEWNEIGH with invalid state %#x\n",
   ndm->ndm_state);
  return -EINVAL;
 }

 if (tb[NDA_DST] == ((void*)0))
  return -EINVAL;

 err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &vni, &ifindex);
 if (err)
  return err;

 spin_lock_bh(&vxlan->hash_lock);
 err = vxlan_fdb_create(vxlan, addr, ip, ndm->ndm_state, flags,
          port, vni, ifindex, ndm->ndm_flags);
 spin_unlock_bh(&vxlan->hash_lock);

 return err;
}
