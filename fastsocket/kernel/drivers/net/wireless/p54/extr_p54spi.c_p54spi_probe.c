
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int bits_per_word; int max_speed_hz; int dev; } ;
struct TYPE_2__ {int tx; int stop; int open; } ;
struct p54s_priv {struct ieee80211_hw* hw; struct spi_device* spi; TYPE_1__ common; int tx_lock; int mutex; int tx_pending; int fw_comp; int work; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_DISABLED ;
 int IRQ_TYPE_EDGE_RISING ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,int *) ;
 int dev_err (int *,char*,...) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct spi_device*) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int init_completion (int *) ;
 int irq_set_irq_type (int ,int ) ;
 int mutex_init (int *) ;
 int p54_free_common (struct ieee80211_hw*) ;
 struct ieee80211_hw* p54_init_common (int) ;
 int p54_register_common (struct ieee80211_hw*,int *) ;
 int p54spi_gpio_irq ;
 int p54spi_gpio_power ;
 int p54spi_interrupt ;
 int p54spi_op_start ;
 int p54spi_op_stop ;
 int p54spi_op_tx ;
 int p54spi_request_eeprom (struct ieee80211_hw*) ;
 int p54spi_request_firmware (struct ieee80211_hw*) ;
 int p54spi_work ;
 int request_irq (int ,int ,int ,char*,struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct p54s_priv*) ;
 int spi_setup (struct spi_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int p54spi_probe(struct spi_device *spi)
{
 struct p54s_priv *priv = ((void*)0);
 struct ieee80211_hw *hw;
 int ret = -EINVAL;

 hw = p54_init_common(sizeof(*priv));
 if (!hw) {
  dev_err(&spi->dev, "could not alloc ieee80211_hw");
  return -ENOMEM;
 }

 priv = hw->priv;
 priv->hw = hw;
 spi_set_drvdata(spi, priv);
 priv->spi = spi;

 spi->bits_per_word = 16;
 spi->max_speed_hz = 24000000;

 ret = spi_setup(spi);
 if (ret < 0) {
  dev_err(&priv->spi->dev, "spi_setup failed");
  goto err_free;
 }

 ret = gpio_request(p54spi_gpio_power, "p54spi power");
 if (ret < 0) {
  dev_err(&priv->spi->dev, "power GPIO request failed: %d", ret);
  goto err_free;
 }

 ret = gpio_request(p54spi_gpio_irq, "p54spi irq");
 if (ret < 0) {
  dev_err(&priv->spi->dev, "irq GPIO request failed: %d", ret);
  goto err_free_gpio_power;
 }

 gpio_direction_output(p54spi_gpio_power, 0);
 gpio_direction_input(p54spi_gpio_irq);

 ret = request_irq(gpio_to_irq(p54spi_gpio_irq),
     p54spi_interrupt, IRQF_DISABLED, "p54spi",
     priv->spi);
 if (ret < 0) {
  dev_err(&priv->spi->dev, "request_irq() failed");
  goto err_free_gpio_irq;
 }

 irq_set_irq_type(gpio_to_irq(p54spi_gpio_irq), IRQ_TYPE_EDGE_RISING);

 disable_irq(gpio_to_irq(p54spi_gpio_irq));

 INIT_WORK(&priv->work, p54spi_work);
 init_completion(&priv->fw_comp);
 INIT_LIST_HEAD(&priv->tx_pending);
 mutex_init(&priv->mutex);
 spin_lock_init(&priv->tx_lock);
 SET_IEEE80211_DEV(hw, &spi->dev);
 priv->common.open = p54spi_op_start;
 priv->common.stop = p54spi_op_stop;
 priv->common.tx = p54spi_op_tx;

 ret = p54spi_request_firmware(hw);
 if (ret < 0)
  goto err_free_common;

 ret = p54spi_request_eeprom(hw);
 if (ret)
  goto err_free_common;

 ret = p54_register_common(hw, &priv->spi->dev);
 if (ret)
  goto err_free_common;

 return 0;

err_free_common:
 free_irq(gpio_to_irq(p54spi_gpio_irq), spi);
err_free_gpio_irq:
 gpio_free(p54spi_gpio_irq);
err_free_gpio_power:
 gpio_free(p54spi_gpio_power);
err_free:
 p54_free_common(priv->hw);
 return ret;
}
