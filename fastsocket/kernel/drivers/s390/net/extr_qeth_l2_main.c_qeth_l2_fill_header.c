
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_ethhdr {scalar_t__ h_vlan_proto; int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int vlan_id; int * flags; scalar_t__ pkt_length; int id; } ;
struct TYPE_4__ {TYPE_1__ l2; } ;
struct qeth_hdr {TYPE_2__ hdr; } ;
struct qeth_card {int dummy; } ;


 int ETH_P_8021Q ;
 scalar_t__ QETH_HEADER_SIZE ;
 int QETH_HEADER_TYPE_LAYER2 ;
 int QETH_LAYER2_FLAG_BROADCAST ;
 int QETH_LAYER2_FLAG_MULTICAST ;
 int QETH_LAYER2_FLAG_UNICAST ;
 int QETH_LAYER2_FLAG_VLAN ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 scalar_t__ __constant_htons (int ) ;
 int memset (struct qeth_hdr*,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static void qeth_l2_fill_header(struct qeth_card *card, struct qeth_hdr *hdr,
   struct sk_buff *skb, int ipv, int cast_type)
{
 struct vlan_ethhdr *veth = (struct vlan_ethhdr *)skb_mac_header(skb);

 memset(hdr, 0, sizeof(struct qeth_hdr));
 hdr->hdr.l2.id = QETH_HEADER_TYPE_LAYER2;


 if (cast_type == RTN_MULTICAST)
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_MULTICAST;
 else if (cast_type == RTN_BROADCAST)
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_BROADCAST;
 else
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_UNICAST;

 hdr->hdr.l2.pkt_length = skb->len-QETH_HEADER_SIZE;



 if (veth->h_vlan_proto == __constant_htons(ETH_P_8021Q)) {
  hdr->hdr.l2.flags[2] |= QETH_LAYER2_FLAG_VLAN;
  hdr->hdr.l2.vlan_id = ntohs(veth->h_vlan_TCI);
 }
}
