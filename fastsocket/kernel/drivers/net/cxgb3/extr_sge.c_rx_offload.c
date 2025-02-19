
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int (* recv ) (struct t3cdev*,struct sk_buff**,unsigned int) ;} ;
struct sk_buff {int dummy; } ;
struct sge_rspq {int offload_bundles; scalar_t__ polling; } ;


 unsigned int RX_BUNDLE_SIZE ;
 int offload_enqueue (struct sge_rspq*,struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int stub1 (struct t3cdev*,struct sk_buff**,unsigned int) ;

__attribute__((used)) static inline int rx_offload(struct t3cdev *tdev, struct sge_rspq *rq,
        struct sk_buff *skb, struct sk_buff *rx_gather[],
        unsigned int gather_idx)
{
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 if (rq->polling) {
  rx_gather[gather_idx++] = skb;
  if (gather_idx == RX_BUNDLE_SIZE) {
   tdev->recv(tdev, rx_gather, RX_BUNDLE_SIZE);
   gather_idx = 0;
   rq->offload_bundles++;
  }
 } else
  offload_enqueue(rq, skb);

 return gather_idx;
}
