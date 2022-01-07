
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void ath9k_wmi_ctrl_tx(void *priv, struct sk_buff *skb,
         enum htc_endpoint_id epid, bool txok)
{
 kfree_skb(skb);
}
