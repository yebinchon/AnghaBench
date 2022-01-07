
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlanhdr {int vx_flags; int vx_vni; } ;
struct vxlan_sock {int (* rcv ) (struct vxlan_sock*,struct sk_buff*,int) ;} ;
struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
typedef int __be16 ;
struct TYPE_2__ {int sport; } ;


 int ETH_P_TEB ;
 int VXLAN_FLAGS ;
 int VXLAN_HLEN ;
 int htonl (int) ;
 int htons (int ) ;
 TYPE_1__* inet_sk (struct sock*) ;
 scalar_t__ iptunnel_pull_header (struct sk_buff*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_dbg (int ,char*,int ,int ) ;
 int ntohl (int) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int sock_net (struct sock*) ;
 int stub1 (struct vxlan_sock*,struct sk_buff*,int) ;
 scalar_t__ udp_hdr (struct sk_buff*) ;
 struct vxlan_sock* vxlan_find_sock (int ,int ) ;

__attribute__((used)) static int vxlan_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
{
 struct vxlan_sock *vs;
 struct vxlanhdr *vxh;
 __be16 port;


 if (!pskb_may_pull(skb, VXLAN_HLEN))
  goto error;


 vxh = (struct vxlanhdr *)(udp_hdr(skb) + 1);
 if (vxh->vx_flags != htonl(VXLAN_FLAGS) ||
     (vxh->vx_vni & htonl(0xff))) {
  netdev_dbg(skb->dev, "invalid vxlan flags=%#x vni=%#x\n",
      ntohl(vxh->vx_flags), ntohl(vxh->vx_vni));
  goto error;
 }

 if (iptunnel_pull_header(skb, VXLAN_HLEN, htons(ETH_P_TEB)))
  goto drop;

 port = inet_sk(sk)->sport;

 vs = vxlan_find_sock(sock_net(sk), port);
 if (!vs)
  goto drop;

 vs->rcv(vs, skb, vxh->vx_vni);
 return 0;

drop:

 kfree_skb(skb);
 return 0;

error:

 return 1;
}
