
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vxlan_rdst {scalar_t__ remote_ip; scalar_t__ remote_port; scalar_t__ remote_vni; scalar_t__ remote_ifindex; } ;
struct nda_cacheinfo {scalar_t__ ndm_refcnt; void* ndm_updated; scalar_t__ ndm_confirmed; void* ndm_used; } ;
struct vxlan_fdb {scalar_t__ updated; scalar_t__ used; struct nda_cacheinfo eth_addr; int flags; int state; } ;
struct TYPE_4__ {scalar_t__ remote_vni; } ;
struct vxlan_dev {scalar_t__ dst_port; TYPE_2__ default_dst; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ndmsg {int ndm_type; int ndm_flags; int ndm_ifindex; int ndm_state; int ndm_family; } ;
typedef int ci ;
struct TYPE_3__ {int ifindex; } ;


 int AF_BRIDGE ;
 int AF_INET ;
 int EMSGSIZE ;
 int ETH_ALEN ;
 int INADDR_ANY ;
 int NDA_CACHEINFO ;
 int NDA_DST ;
 int NDA_IFINDEX ;
 int NDA_LLADDR ;
 int NDA_PORT ;
 int NDA_VNI ;
 int RTM_GETNEIGH ;
 scalar_t__ htonl (int ) ;
 int is_zero_ether_addr (struct nda_cacheinfo) ;
 unsigned long jiffies ;
 void* jiffies_to_clock_t (scalar_t__) ;
 int memset (struct ndmsg*,int ,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct nda_cacheinfo*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int vxlan_fdb_info(struct sk_buff *skb, struct vxlan_dev *vxlan,
     const struct vxlan_fdb *fdb,
     u32 portid, u32 seq, int type, unsigned int flags,
     const struct vxlan_rdst *rdst)
{
 unsigned long now = jiffies;
 struct nda_cacheinfo ci;
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;
 bool send_ip, send_eth;

 nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 memset(ndm, 0, sizeof(*ndm));

 send_eth = send_ip = 1;

 if (type == RTM_GETNEIGH) {
  ndm->ndm_family = AF_INET;
  send_ip = rdst->remote_ip != htonl(INADDR_ANY);
  send_eth = !is_zero_ether_addr(fdb->eth_addr);
 } else
  ndm->ndm_family = AF_BRIDGE;
 ndm->ndm_state = fdb->state;
 ndm->ndm_ifindex = vxlan->dev->ifindex;
 ndm->ndm_flags = fdb->flags;
 ndm->ndm_type = NDA_DST;

 if (send_eth && nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->eth_addr))
  goto nla_put_failure;

 if (send_ip && nla_put_be32(skb, NDA_DST, rdst->remote_ip))
  goto nla_put_failure;

 if (rdst->remote_port && rdst->remote_port != vxlan->dst_port &&
     nla_put_be16(skb, NDA_PORT, rdst->remote_port))
  goto nla_put_failure;
 if (rdst->remote_vni != vxlan->default_dst.remote_vni &&
     nla_put_u32(skb, NDA_VNI, rdst->remote_vni))
  goto nla_put_failure;
 if (rdst->remote_ifindex &&
     nla_put_u32(skb, NDA_IFINDEX, rdst->remote_ifindex))
  goto nla_put_failure;

 ci.ndm_used = jiffies_to_clock_t(now - fdb->used);
 ci.ndm_confirmed = 0;
 ci.ndm_updated = jiffies_to_clock_t(now - fdb->updated);
 ci.ndm_refcnt = 0;

 if (nla_put(skb, NDA_CACHEINFO, sizeof(ci), &ci))
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
