
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {scalar_t__ tx_power_user_lmt; scalar_t__ tx_power_device_lmt; scalar_t__ tx_power_next; TYPE_1__* ops; int staging; int active; int status; int mutex; } ;
typedef scalar_t__ s8 ;
struct TYPE_2__ {int (* send_tx_power ) (struct il_priv*) ;} ;


 int D_INFO (char*) ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int IL_WARN (char*,scalar_t__,...) ;
 int S_SCANNING ;
 int il_is_ready_rf (struct il_priv*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int stub1 (struct il_priv*) ;
 scalar_t__ test_bit (int ,int *) ;

int
il_set_tx_power(struct il_priv *il, s8 tx_power, bool force)
{
 int ret;
 s8 prev_tx_power;
 bool defer;

 lockdep_assert_held(&il->mutex);

 if (il->tx_power_user_lmt == tx_power && !force)
  return 0;

 if (!il->ops->send_tx_power)
  return -EOPNOTSUPP;


 if (tx_power < 0) {
  IL_WARN("Requested user TXPOWER %d below 1 mW.\n", tx_power);
  return -EINVAL;
 }

 if (tx_power > il->tx_power_device_lmt) {
  IL_WARN("Requested user TXPOWER %d above upper limit %d.\n",
   tx_power, il->tx_power_device_lmt);
  return -EINVAL;
 }

 if (!il_is_ready_rf(il))
  return -EIO;



 il->tx_power_next = tx_power;


 defer = test_bit(S_SCANNING, &il->status) ||
     memcmp(&il->active, &il->staging, sizeof(il->staging));
 if (defer && !force) {
  D_INFO("Deferring tx power set\n");
  return 0;
 }

 prev_tx_power = il->tx_power_user_lmt;
 il->tx_power_user_lmt = tx_power;

 ret = il->ops->send_tx_power(il);


 if (ret) {
  il->tx_power_user_lmt = prev_tx_power;
  il->tx_power_next = prev_tx_power;
 }
 return ret;
}
