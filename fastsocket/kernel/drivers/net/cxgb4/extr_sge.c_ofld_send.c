
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * ofldtxq; int * ctrlq; } ;
struct adapter {TYPE_1__ sge; } ;


 int ctrl_xmit (int *,struct sk_buff*) ;
 int is_ctrl_pkt (struct sk_buff*) ;
 int ofld_xmit (int *,struct sk_buff*) ;
 unsigned int skb_txq (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int ofld_send(struct adapter *adap, struct sk_buff *skb)
{
 unsigned int idx = skb_txq(skb);

 if (unlikely(is_ctrl_pkt(skb)))
  return ctrl_xmit(&adap->sge.ctrlq[idx], skb);
 return ofld_xmit(&adap->sge.ofldtxq[idx], skb);
}
