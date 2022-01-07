
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vxlan_stats {int tx_bytes; int syncp; int tx_packets; } ;
struct vxlan_rdst {int remote_vni; int remote_ifindex; scalar_t__ remote_ip; scalar_t__ remote_port; } ;
struct vxlan_dev {int ttl; int tos; int stats; int vn_sock; int saddr; int port_max; int port_min; scalar_t__ dst_port; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_4__ {TYPE_3__ dst; } ;
struct rtable {int rt_flags; TYPE_1__ u; } ;
struct TYPE_5__ {int tx_errors; int tx_dropped; int tx_aborted_errors; int collisions; int tx_carrier_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct iphdr {int dummy; } ;
struct flowi {int fl4_src; int fl4_tos; scalar_t__ fl4_dst; int proto; int oif; } ;
typedef int fl4 ;
typedef int __u8 ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 scalar_t__ IN_MULTICAST (int ) ;
 int IPPROTO_UDP ;
 int RTAX_HOPLIMIT ;
 int RTCF_BROADCAST ;
 int RTCF_LOCAL ;
 int RTCF_MULTICAST ;
 int RT_TOS (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_net (struct net_device*) ;
 int dst_metric (TYPE_3__*,int ) ;
 int htonl (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_output_key (int ,struct rtable**,struct flowi*) ;
 int ip_rt_put (struct rtable*) ;
 int ip_tunnel_ecn_encap (int,struct iphdr const*,struct sk_buff*) ;
 int ip_tunnel_get_dsfield (struct iphdr const*,struct sk_buff*) ;
 int memset (struct flowi*,int ,int) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__*) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int ntohl (scalar_t__) ;
 struct vxlan_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int vxlan_encap_bypass (struct sk_buff*,struct vxlan_dev*,struct vxlan_dev*) ;
 struct vxlan_dev* vxlan_find_vni (int ,int,scalar_t__) ;
 scalar_t__ vxlan_src_port (int ,int ,struct sk_buff*) ;
 int vxlan_xmit_skb (int ,int ,struct rtable*,struct sk_buff*,int ,scalar_t__,int,int,scalar_t__,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void vxlan_xmit_one(struct sk_buff *skb, struct net_device *dev,
      struct vxlan_rdst *rdst, bool did_rsc)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct rtable *rt;
 const struct iphdr *old_iph;
 struct flowi fl4;
 __be32 dst;
 __be16 src_port, dst_port;
 u32 vni;
 __be16 df = 0;
 __u8 tos, ttl;
 int err;

 dst_port = rdst->remote_port ? rdst->remote_port : vxlan->dst_port;
 vni = rdst->remote_vni;
 dst = rdst->remote_ip;

 if (!dst) {
  if (did_rsc) {

   vxlan_encap_bypass(skb, vxlan, vxlan);
   return;
  }
  goto drop;
 }

 old_iph = ip_hdr(skb);

 ttl = vxlan->ttl;
 if (!ttl && IN_MULTICAST(ntohl(dst)))
  ttl = 1;

 tos = vxlan->tos;
 if (tos == 1)
  tos = ip_tunnel_get_dsfield(old_iph, skb);

 src_port = vxlan_src_port(vxlan->port_min, vxlan->port_max, skb);

 memset(&fl4, 0, sizeof(fl4));
 fl4.oif = rdst->remote_ifindex;
 fl4.proto = IPPROTO_UDP;
 fl4.fl4_dst = dst;
 fl4.fl4_src = vxlan->saddr;
 fl4.fl4_tos = RT_TOS(tos);
 err = ip_route_output_key(dev_net(dev), &rt, &fl4);
 if (err) {
  netdev_dbg(dev, "no route to %pI4\n", &dst);
  dev->stats.tx_carrier_errors++;
  goto tx_error;
 }

 if (rt->u.dst.dev == dev) {
  netdev_dbg(dev, "circular route to %pI4\n", &dst);
  dev->stats.collisions++;
  goto rt_tx_error;
 }


 if (rt->rt_flags & RTCF_LOCAL &&
     !(rt->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))) {
  struct vxlan_dev *dst_vxlan;

  ip_rt_put(rt);
  dst_vxlan = vxlan_find_vni(dev_net(dev), vni, dst_port);
  if (!dst_vxlan)
   goto tx_error;
  vxlan_encap_bypass(skb, vxlan, dst_vxlan);
  return;
 }

 tos = ip_tunnel_ecn_encap(tos, old_iph, skb);
 ttl = ttl ? : dst_metric(&rt->u.dst, RTAX_HOPLIMIT);

 err = vxlan_xmit_skb(dev_net(dev), vxlan->vn_sock, rt, skb,
        fl4.fl4_src, dst, tos, ttl, df,
        src_port, dst_port, htonl(vni << 8));

 if (err < 0)
  goto rt_tx_error;

 if (err > 0) {
  struct vxlan_stats *stats = this_cpu_ptr(vxlan->stats);

  u64_stats_update_begin(&stats->syncp);
  stats->tx_packets++;
  stats->tx_bytes += err;
  u64_stats_update_end(&stats->syncp);
 } else {
  dev->stats.tx_errors++;
  dev->stats.tx_aborted_errors++;
 }
 return;

drop:
 dev->stats.tx_dropped++;
 goto tx_free;

rt_tx_error:
 ip_rt_put(rt);
tx_error:
 dev->stats.tx_errors++;
tx_free:
 dev_kfree_skb(skb);
}
