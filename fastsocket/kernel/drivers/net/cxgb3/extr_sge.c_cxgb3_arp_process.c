
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tip ;
struct sk_buff {struct net_device* dev; } ;
struct TYPE_2__ {int mac_addr; } ;
struct port_info {scalar_t__ iscsi_ipv4addr; TYPE_1__ iscsic; } ;
struct net_device {int addr_len; } ;
struct arphdr {scalar_t__ ar_op; } ;
typedef int sip ;
typedef scalar_t__ __be32 ;


 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 int ETH_P_ARP ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int arp_send (int ,int ,scalar_t__,struct net_device*,scalar_t__,unsigned char*,int ,unsigned char*) ;
 scalar_t__ htons (int ) ;
 int memcpy (scalar_t__*,unsigned char*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void cxgb3_arp_process(struct port_info *pi, struct sk_buff *skb)
{
 struct net_device *dev = skb->dev;
 struct arphdr *arp;
 unsigned char *arp_ptr;
 unsigned char *sha;
 __be32 sip, tip;

 if (!dev)
  return;

 skb_reset_network_header(skb);
 arp = arp_hdr(skb);

 if (arp->ar_op != htons(ARPOP_REQUEST))
  return;

 arp_ptr = (unsigned char *)(arp + 1);
 sha = arp_ptr;
 arp_ptr += dev->addr_len;
 memcpy(&sip, arp_ptr, sizeof(sip));
 arp_ptr += sizeof(sip);
 arp_ptr += dev->addr_len;
 memcpy(&tip, arp_ptr, sizeof(tip));

 if (tip != pi->iscsi_ipv4addr)
  return;

 arp_send(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
   pi->iscsic.mac_addr, sha);

}
