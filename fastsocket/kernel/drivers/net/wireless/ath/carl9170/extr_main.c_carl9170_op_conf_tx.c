
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int mutex; int * edcf; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ queues; } ;


 int EINVAL ;
 size_t* ar9170_qmap ;
 int carl9170_set_qos (struct ar9170*) ;
 int memcpy (int *,struct ieee80211_tx_queue_params const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int carl9170_op_conf_tx(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif, u16 queue,
          const struct ieee80211_tx_queue_params *param)
{
 struct ar9170 *ar = hw->priv;
 int ret;

 mutex_lock(&ar->mutex);
 if (queue < ar->hw->queues) {
  memcpy(&ar->edcf[ar9170_qmap[queue]], param, sizeof(*param));
  ret = carl9170_set_qos(ar);
 } else {
  ret = -EINVAL;
 }

 mutex_unlock(&ar->mutex);
 return ret;
}
