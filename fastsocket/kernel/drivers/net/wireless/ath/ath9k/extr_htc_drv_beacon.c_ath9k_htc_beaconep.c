
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int dev_kfree_skb_any (struct sk_buff*) ;

void ath9k_htc_beaconep(void *drv_priv, struct sk_buff *skb,
   enum htc_endpoint_id ep_id, bool txok)
{
 dev_kfree_skb_any(skb);
}
