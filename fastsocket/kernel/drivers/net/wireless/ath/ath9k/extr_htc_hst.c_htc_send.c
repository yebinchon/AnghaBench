
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct htc_target {int dummy; } ;
struct ath9k_htc_tx_ctl {int epid; } ;


 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;
 int htc_issue_send (struct htc_target*,struct sk_buff*,int ,int ,int ) ;

int htc_send(struct htc_target *target, struct sk_buff *skb)
{
 struct ath9k_htc_tx_ctl *tx_ctl;

 tx_ctl = HTC_SKB_CB(skb);
 return htc_issue_send(target, skb, skb->len, 0, tx_ctl->epid);
}
