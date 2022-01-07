
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct be_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; } ;


 int BE_MAX_TX_FRAG_COUNT ;
 int BUG_ON (int) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static u32 wrb_cnt_for_skb(struct be_adapter *adapter, struct sk_buff *skb,
        bool *dummy)
{
 int cnt = (skb->len > skb->data_len);

 cnt += skb_shinfo(skb)->nr_frags;


 cnt++;
 if (lancer_chip(adapter) || !(cnt & 1)) {
  *dummy = 0;
 } else {

  cnt++;
  *dummy = 1;
 }
 BUG_ON(cnt > BE_MAX_TX_FRAG_COUNT);
 return cnt;
}
