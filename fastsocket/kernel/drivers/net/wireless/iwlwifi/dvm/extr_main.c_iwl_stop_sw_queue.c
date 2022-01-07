
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int* queue_to_mac80211; int hw; int transport_queue_stop; int * queue_stop_count; } ;
struct iwl_op_mode {int dummy; } ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_priv*,char*,int,int) ;
 int IWL_INVALID_MAC80211_QUEUE ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_inc_return (int *) ;
 int ieee80211_stop_queue (int ,int) ;
 int set_bit (int,int *) ;

__attribute__((used)) static void iwl_stop_sw_queue(struct iwl_op_mode *op_mode, int queue)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 int mq = priv->queue_to_mac80211[queue];

 if (WARN_ON_ONCE(mq == IWL_INVALID_MAC80211_QUEUE))
  return;

 if (atomic_inc_return(&priv->queue_stop_count[mq]) > 1) {
  IWL_DEBUG_TX_QUEUES(priv,
   "queue %d (mac80211 %d) already stopped\n",
   queue, mq);
  return;
 }

 set_bit(mq, &priv->transport_queue_stop);
 ieee80211_stop_queue(priv->hw, mq);
}
