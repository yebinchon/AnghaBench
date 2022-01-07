
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int * queue_to_mac80211; int agg_q_alloc; } ;


 int IWL_INVALID_MAC80211_QUEUE ;
 int clear_bit (int,int ) ;

__attribute__((used)) static void iwlagn_dealloc_agg_txq(struct iwl_priv *priv, int q)
{
 clear_bit(q, priv->agg_q_alloc);
 priv->queue_to_mac80211[q] = IWL_INVALID_MAC80211_QUEUE;
}
