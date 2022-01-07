
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_rdst {scalar_t__ remote_ifindex; scalar_t__ remote_ip; scalar_t__ remote_vni; } ;
struct vxlan_dev {int ttl; int tos; int flags; int dst_port; scalar_t__ addrmax; scalar_t__ age_interval; scalar_t__ saddr; int port_max; int port_min; struct vxlan_rdst default_dst; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ifla_vxlan_port_range {int high; int low; } ;
typedef int ports ;


 int EMSGSIZE ;
 int IFLA_VXLAN_AGEING ;
 int IFLA_VXLAN_GROUP ;
 int IFLA_VXLAN_ID ;
 int IFLA_VXLAN_L2MISS ;
 int IFLA_VXLAN_L3MISS ;
 int IFLA_VXLAN_LEARNING ;
 int IFLA_VXLAN_LIMIT ;
 int IFLA_VXLAN_LINK ;
 int IFLA_VXLAN_LOCAL ;
 int IFLA_VXLAN_PORT ;
 int IFLA_VXLAN_PORT_RANGE ;
 int IFLA_VXLAN_PROXY ;
 int IFLA_VXLAN_RSC ;
 int IFLA_VXLAN_TOS ;
 int IFLA_VXLAN_TTL ;
 int VXLAN_F_L2MISS ;
 int VXLAN_F_L3MISS ;
 int VXLAN_F_LEARN ;
 int VXLAN_F_PROXY ;
 int VXLAN_F_RSC ;
 int htons (int ) ;
 struct vxlan_dev* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ifla_vxlan_port_range*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int vxlan_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 const struct vxlan_dev *vxlan = netdev_priv(dev);
 const struct vxlan_rdst *dst = &vxlan->default_dst;
 struct ifla_vxlan_port_range ports = {
  .low = htons(vxlan->port_min),
  .high = htons(vxlan->port_max),
 };

 if (nla_put_u32(skb, IFLA_VXLAN_ID, dst->remote_vni))
  goto nla_put_failure;

 if (dst->remote_ip && nla_put_be32(skb, IFLA_VXLAN_GROUP, dst->remote_ip))
  goto nla_put_failure;

 if (dst->remote_ifindex && nla_put_u32(skb, IFLA_VXLAN_LINK, dst->remote_ifindex))
  goto nla_put_failure;

 if (vxlan->saddr && nla_put_be32(skb, IFLA_VXLAN_LOCAL, vxlan->saddr))
  goto nla_put_failure;

 if (nla_put_u8(skb, IFLA_VXLAN_TTL, vxlan->ttl) ||
     nla_put_u8(skb, IFLA_VXLAN_TOS, vxlan->tos) ||
     nla_put_u8(skb, IFLA_VXLAN_LEARNING,
   !!(vxlan->flags & VXLAN_F_LEARN)) ||
     nla_put_u8(skb, IFLA_VXLAN_PROXY,
   !!(vxlan->flags & VXLAN_F_PROXY)) ||
     nla_put_u8(skb, IFLA_VXLAN_RSC, !!(vxlan->flags & VXLAN_F_RSC)) ||
     nla_put_u8(skb, IFLA_VXLAN_L2MISS,
   !!(vxlan->flags & VXLAN_F_L2MISS)) ||
     nla_put_u8(skb, IFLA_VXLAN_L3MISS,
   !!(vxlan->flags & VXLAN_F_L3MISS)) ||
     nla_put_u32(skb, IFLA_VXLAN_AGEING, vxlan->age_interval) ||
     nla_put_u32(skb, IFLA_VXLAN_LIMIT, vxlan->addrmax) ||
     nla_put_be16(skb, IFLA_VXLAN_PORT, vxlan->dst_port))
  goto nla_put_failure;

 if (nla_put(skb, IFLA_VXLAN_PORT_RANGE, sizeof(ports), &ports))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
