
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54s_priv {scalar_t__ fw_state; int mutex; TYPE_1__* spi; int fw_comp; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int EINTR ;
 scalar_t__ FW_STATE_BOOTING ;
 scalar_t__ FW_STATE_READY ;
 int WARN_ON (int) ;
 int dev_err (int *,char*) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int p54spi_power_off (struct p54s_priv*) ;
 int p54spi_power_on (struct p54s_priv*) ;
 int p54spi_upload_firmware (struct ieee80211_hw*) ;
 unsigned long wait_for_completion_interruptible_timeout (int *,unsigned long) ;

__attribute__((used)) static int p54spi_op_start(struct ieee80211_hw *dev)
{
 struct p54s_priv *priv = dev->priv;
 unsigned long timeout;
 int ret = 0;

 if (mutex_lock_interruptible(&priv->mutex)) {
  ret = -EINTR;
  goto out;
 }

 priv->fw_state = FW_STATE_BOOTING;

 p54spi_power_on(priv);

 ret = p54spi_upload_firmware(dev);
 if (ret < 0) {
  p54spi_power_off(priv);
  goto out_unlock;
 }

 mutex_unlock(&priv->mutex);

 timeout = msecs_to_jiffies(2000);
 timeout = wait_for_completion_interruptible_timeout(&priv->fw_comp,
           timeout);
 if (!timeout) {
  dev_err(&priv->spi->dev, "firmware boot failed");
  p54spi_power_off(priv);
  ret = -1;
  goto out;
 }

 if (mutex_lock_interruptible(&priv->mutex)) {
  ret = -EINTR;
  p54spi_power_off(priv);
  goto out;
 }

 WARN_ON(priv->fw_state != FW_STATE_READY);

out_unlock:
 mutex_unlock(&priv->mutex);

out:
 return ret;
}
