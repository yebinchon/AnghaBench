
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_op_mode {int dummy; } ;


 int GFP_ATOMIC ;
 void cfg80211_testmode_event (struct sk_buff*,int ) ;

__attribute__((used)) static void iwl_testmode_event(struct iwl_op_mode *op_mode, struct sk_buff *skb)
{
 return cfg80211_testmode_event(skb, GFP_ATOMIC);
}
