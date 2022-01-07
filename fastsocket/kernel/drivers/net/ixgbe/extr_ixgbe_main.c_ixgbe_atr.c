
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flow_type; int vlan_id; } ;
struct TYPE_6__ {int src; int dst; } ;
union ixgbe_atr_hash_dword {int ip; TYPE_2__ formatted; TYPE_1__ port; int dword; } ;
struct tcphdr {int dest; int source; int syn; scalar_t__ fin; } ;
struct ixgbe_tx_buffer {int protocol; int tx_flags; int skb; } ;
struct ixgbe_ring {scalar_t__ atr_sample_rate; scalar_t__ atr_count; int queue_index; struct ixgbe_q_vector* q_vector; } ;
struct ixgbe_q_vector {TYPE_5__* adapter; } ;
struct TYPE_9__ {int* s6_addr32; } ;
struct TYPE_8__ {int* s6_addr32; } ;
struct ipv6hdr {scalar_t__ nexthdr; TYPE_4__ daddr; TYPE_3__ saddr; } ;
struct iphdr {scalar_t__ protocol; int saddr; int daddr; } ;
typedef int __be16 ;
struct TYPE_10__ {int hw; } ;


 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int IXGBE_ATR_FLOW_TYPE_TCPV4 ;
 int IXGBE_ATR_FLOW_TYPE_TCPV6 ;
 int IXGBE_TX_FLAGS_HW_VLAN ;
 int IXGBE_TX_FLAGS_SW_VLAN ;
 int IXGBE_TX_FLAGS_VLAN_SHIFT ;
 int __constant_htons (int ) ;
 int htons (int) ;
 int ixgbe_fdir_add_signature_filter_82599 (int *,union ixgbe_atr_hash_dword,union ixgbe_atr_hash_dword,int ) ;
 unsigned char* skb_network_header (int ) ;
 struct tcphdr* tcp_hdr (int ) ;

__attribute__((used)) static void ixgbe_atr(struct ixgbe_ring *ring,
        struct ixgbe_tx_buffer *first)
{
 struct ixgbe_q_vector *q_vector = ring->q_vector;
 union ixgbe_atr_hash_dword input = { .dword = 0 };
 union ixgbe_atr_hash_dword common = { .dword = 0 };
 union {
  unsigned char *network;
  struct iphdr *ipv4;
  struct ipv6hdr *ipv6;
 } hdr;
 struct tcphdr *th;
 __be16 vlan_id;


 if (!q_vector)
  return;


 if (!ring->atr_sample_rate)
  return;

 ring->atr_count++;


 hdr.network = skb_network_header(first->skb);


 if ((first->protocol != __constant_htons(ETH_P_IPV6) ||
      hdr.ipv6->nexthdr != IPPROTO_TCP) &&
     (first->protocol != __constant_htons(ETH_P_IP) ||
      hdr.ipv4->protocol != IPPROTO_TCP))
  return;

 th = tcp_hdr(first->skb);


 if (!th || th->fin)
  return;


 if (!th->syn && (ring->atr_count < ring->atr_sample_rate))
  return;


 ring->atr_count = 0;

 vlan_id = htons(first->tx_flags >> IXGBE_TX_FLAGS_VLAN_SHIFT);
 input.formatted.vlan_id = vlan_id;





 if (first->tx_flags & (IXGBE_TX_FLAGS_SW_VLAN | IXGBE_TX_FLAGS_HW_VLAN))
  common.port.src ^= th->dest ^ __constant_htons(ETH_P_8021Q);
 else
  common.port.src ^= th->dest ^ first->protocol;
 common.port.dst ^= th->source;

 if (first->protocol == __constant_htons(ETH_P_IP)) {
  input.formatted.flow_type = IXGBE_ATR_FLOW_TYPE_TCPV4;
  common.ip ^= hdr.ipv4->saddr ^ hdr.ipv4->daddr;
 } else {
  input.formatted.flow_type = IXGBE_ATR_FLOW_TYPE_TCPV6;
  common.ip ^= hdr.ipv6->saddr.s6_addr32[0] ^
        hdr.ipv6->saddr.s6_addr32[1] ^
        hdr.ipv6->saddr.s6_addr32[2] ^
        hdr.ipv6->saddr.s6_addr32[3] ^
        hdr.ipv6->daddr.s6_addr32[0] ^
        hdr.ipv6->daddr.s6_addr32[1] ^
        hdr.ipv6->daddr.s6_addr32[2] ^
        hdr.ipv6->daddr.s6_addr32[3];
 }


 ixgbe_fdir_add_signature_filter_82599(&q_vector->adapter->hw,
           input, common, ring->queue_index);
}
