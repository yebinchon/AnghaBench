
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_fdb {int state; scalar_t__ flags; int hlist; int const* eth_addr; int remotes; void* used; void* updated; } ;
struct vxlan_dev {scalar_t__ addrmax; scalar_t__ addrcnt; int dev; } ;
typedef scalar_t__ __u8 ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __be32 ;
typedef int __be16 ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int NLM_F_APPEND ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 int RTM_NEWNEIGH ;
 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int const*) ;
 int hlist_add_head_rcu (int *,int ) ;
 scalar_t__ is_multicast_ether_addr (int const*) ;
 scalar_t__ is_zero_ether_addr (int const*) ;
 void* jiffies ;
 struct vxlan_fdb* kmalloc (int,int ) ;
 int memcpy (int const*,int const*,int ) ;
 int netdev_dbg (int ,char*,int const*,...) ;
 int vxlan_fdb_append (struct vxlan_fdb*,int ,int ,int ,int ) ;
 int vxlan_fdb_head (struct vxlan_dev*,int const*) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,int ) ;
 int vxlan_fdb_replace (struct vxlan_fdb*,int ,int ,int ,int ) ;

__attribute__((used)) static int vxlan_fdb_create(struct vxlan_dev *vxlan,
       const u8 *mac, __be32 ip,
       __u16 state, __u16 flags,
       __be16 port, __u32 vni, __u32 ifindex,
       __u8 ndm_flags)
{
 struct vxlan_fdb *f;
 int notify = 0;

 f = __vxlan_find_mac(vxlan, mac);
 if (f) {
  if (flags & NLM_F_EXCL) {
   netdev_dbg(vxlan->dev,
       "lost race to create %pM\n", mac);
   return -EEXIST;
  }
  if (f->state != state) {
   f->state = state;
   f->updated = jiffies;
   notify = 1;
  }
  if (f->flags != ndm_flags) {
   f->flags = ndm_flags;
   f->updated = jiffies;
   notify = 1;
  }
  if ((flags & NLM_F_REPLACE)) {

   if (!(is_multicast_ether_addr(f->eth_addr) ||
        is_zero_ether_addr(f->eth_addr))) {
    int rc = vxlan_fdb_replace(f, ip, port, vni,
          ifindex);

    if (rc < 0)
     return rc;
    notify |= rc;
   } else
    return -EOPNOTSUPP;
  }
  if ((flags & NLM_F_APPEND) &&
      (is_multicast_ether_addr(f->eth_addr) ||
       is_zero_ether_addr(f->eth_addr))) {
   int rc = vxlan_fdb_append(f, ip, port, vni, ifindex);

   if (rc < 0)
    return rc;
   notify |= rc;
  }
 } else {
  if (!(flags & NLM_F_CREATE))
   return -ENOENT;

  if (vxlan->addrmax && vxlan->addrcnt >= vxlan->addrmax)
   return -ENOSPC;


  if ((flags & NLM_F_REPLACE) &&
      (is_multicast_ether_addr(mac) || is_zero_ether_addr(mac)))
   return -EOPNOTSUPP;

  netdev_dbg(vxlan->dev, "add %pM -> %pI4\n", mac, &ip);
  f = kmalloc(sizeof(*f), GFP_ATOMIC);
  if (!f)
   return -ENOMEM;

  notify = 1;
  f->state = state;
  f->flags = ndm_flags;
  f->updated = f->used = jiffies;
  INIT_LIST_HEAD(&f->remotes);
  memcpy(f->eth_addr, mac, ETH_ALEN);

  vxlan_fdb_append(f, ip, port, vni, ifindex);

  ++vxlan->addrcnt;
  hlist_add_head_rcu(&f->hlist,
       vxlan_fdb_head(vxlan, mac));
 }

 if (notify)
  vxlan_fdb_notify(vxlan, f, RTM_NEWNEIGH);

 return 0;
}
