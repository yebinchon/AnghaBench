
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int mutex; int beacon_iter; int hw; } ;


 int AR9170_MAC_REG_DMA_TRIGGER ;
 int CARL9170_IDLE ;
 int CARL9170_STARTED ;
 scalar_t__ IS_ACCEPTING_CMD (struct ar9170*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int carl9170_cancel_worker (struct ar9170*) ;
 int carl9170_led_set_state (struct ar9170*,int ) ;
 int carl9170_set_state_when (struct ar9170*,int ,int ) ;
 int carl9170_usb_stop (struct ar9170*) ;
 int carl9170_write_reg (struct ar9170*,int ,int ) ;
 int carl9170_zap_queues (struct ar9170*) ;
 int ieee80211_stop_queues (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void carl9170_op_stop(struct ieee80211_hw *hw)
{
 struct ar9170 *ar = hw->priv;

 carl9170_set_state_when(ar, CARL9170_STARTED, CARL9170_IDLE);

 ieee80211_stop_queues(ar->hw);

 mutex_lock(&ar->mutex);
 if (IS_ACCEPTING_CMD(ar)) {
  RCU_INIT_POINTER(ar->beacon_iter, ((void*)0));

  carl9170_led_set_state(ar, 0);


  carl9170_write_reg(ar, AR9170_MAC_REG_DMA_TRIGGER, 0);
  carl9170_usb_stop(ar);
 }

 carl9170_zap_queues(ar);
 mutex_unlock(&ar->mutex);

 carl9170_cancel_worker(ar);
}
