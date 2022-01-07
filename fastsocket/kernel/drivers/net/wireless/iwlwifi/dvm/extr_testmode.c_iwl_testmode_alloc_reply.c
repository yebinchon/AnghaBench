
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_priv {TYPE_1__* hw; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 struct sk_buff* cfg80211_testmode_alloc_reply_skb (int ,int) ;

__attribute__((used)) static struct sk_buff*
iwl_testmode_alloc_reply(struct iwl_op_mode *op_mode, int len)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 return cfg80211_testmode_alloc_reply_skb(priv->hw->wiphy, len);
}
