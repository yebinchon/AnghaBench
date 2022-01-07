
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct be_queue_info {size_t head; scalar_t__ len; int used; } ;
struct be_tx_obj {struct sk_buff** sent_skb_list; struct be_queue_info q; } ;
struct be_adapter {struct be_tx_obj* tx_obj; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int gso_segs; } ;


 scalar_t__ BE_MAX_TX_FRAG_COUNT ;
 int BUG_ON (struct sk_buff*) ;
 int NETDEV_TX_OK ;
 int atomic_add (size_t,int *) ;
 scalar_t__ atomic_read (int *) ;
 int be_tx_stats_update (struct be_tx_obj*,size_t,size_t,int,int) ;
 int be_txq_notify (struct be_adapter*,struct be_tx_obj*,size_t) ;
 struct sk_buff* be_xmit_workarounds (struct be_adapter*,struct sk_buff*,int*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 size_t make_tx_wrbs (struct be_adapter*,struct be_queue_info*,struct sk_buff*,size_t,int,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_subqueue (struct net_device*,size_t) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 size_t wrb_cnt_for_skb (struct be_adapter*,struct sk_buff*,int*) ;

__attribute__((used)) static netdev_tx_t be_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_tx_obj *txo = &adapter->tx_obj[skb_get_queue_mapping(skb)];
 struct be_queue_info *txq = &txo->q;
 bool dummy_wrb, stopped = 0;
 u32 wrb_cnt = 0, copied = 0;
 bool skip_hw_vlan = 0;
 u32 start = txq->head;

 skb = be_xmit_workarounds(adapter, skb, &skip_hw_vlan);
 if (!skb)
  return NETDEV_TX_OK;

 wrb_cnt = wrb_cnt_for_skb(adapter, skb, &dummy_wrb);

 copied = make_tx_wrbs(adapter, txq, skb, wrb_cnt, dummy_wrb,
         skip_hw_vlan);
 if (copied) {
  int gso_segs = skb_shinfo(skb)->gso_segs;


  BUG_ON(txo->sent_skb_list[start]);
  txo->sent_skb_list[start] = skb;





  atomic_add(wrb_cnt, &txq->used);
  if ((BE_MAX_TX_FRAG_COUNT + atomic_read(&txq->used)) >=
        txq->len) {
   netif_stop_subqueue(netdev, skb_get_queue_mapping(skb));
   stopped = 1;
  }

  be_txq_notify(adapter, txo, wrb_cnt);

  be_tx_stats_update(txo, wrb_cnt, copied, gso_segs, stopped);
 } else {
  txq->head = start;
  dev_kfree_skb_any(skb);
 }
 return NETDEV_TX_OK;
}
