
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_op_mode {int dummy; } ;


 int cfg80211_testmode_reply (struct sk_buff*) ;

__attribute__((used)) static int iwl_testmode_reply(struct iwl_op_mode *op_mode, struct sk_buff *skb)
{
 return cfg80211_testmode_reply(skb);
}
