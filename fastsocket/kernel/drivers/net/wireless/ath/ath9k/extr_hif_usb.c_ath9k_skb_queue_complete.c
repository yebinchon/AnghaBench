
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hif_device_usb {int htc_handle; } ;


 int TX_STAT_INC (int ) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int ath9k_htc_txcompletion_cb (int ,struct sk_buff*,int) ;
 int skb_failed ;
 int skb_success ;

__attribute__((used)) static inline void ath9k_skb_queue_complete(struct hif_device_usb *hif_dev,
         struct sk_buff_head *queue,
         bool txok)
{
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(queue)) != ((void*)0)) {
  ath9k_htc_txcompletion_cb(hif_dev->htc_handle,
       skb, txok);
  if (txok)
   TX_STAT_INC(skb_success);
  else
   TX_STAT_INC(skb_failed);
 }
}
