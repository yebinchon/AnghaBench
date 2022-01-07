
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct enic {unsigned int loop_tag; scalar_t__ loop_enable; } ;
struct TYPE_2__ {unsigned int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int enic_queue_wq_skb_csum_l4 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ;
 int enic_queue_wq_skb_tso (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int,unsigned int,int) ;
 int enic_queue_wq_skb_vlan (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 unsigned int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static inline void enic_queue_wq_skb(struct enic *enic,
 struct vnic_wq *wq, struct sk_buff *skb)
{
 unsigned int mss = skb_shinfo(skb)->gso_size;
 unsigned int vlan_tag = 0;
 int vlan_tag_insert = 0;
 int loopback = 0;

 if (vlan_tx_tag_present(skb)) {

  vlan_tag_insert = 1;
  vlan_tag = vlan_tx_tag_get(skb);
 } else if (enic->loop_enable) {
  vlan_tag = enic->loop_tag;
  loopback = 1;
 }

 if (mss)
  enic_queue_wq_skb_tso(enic, wq, skb, mss,
   vlan_tag_insert, vlan_tag, loopback);
 else if (skb->ip_summed == CHECKSUM_PARTIAL)
  enic_queue_wq_skb_csum_l4(enic, wq, skb,
   vlan_tag_insert, vlan_tag, loopback);
 else
  enic_queue_wq_skb_vlan(enic, wq, skb,
   vlan_tag_insert, vlan_tag, loopback);
}
