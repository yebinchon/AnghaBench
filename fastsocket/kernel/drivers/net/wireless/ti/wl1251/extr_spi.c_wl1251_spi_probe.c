
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_platform_data {int use_eeprom; int set_power; } ;
struct wl1251 {scalar_t__ irq; int use_eeprom; int set_power; int * if_ops; struct spi_device* if_priv; } ;
struct TYPE_2__ {struct wl12xx_platform_data* platform_data; } ;
struct spi_device {int bits_per_word; scalar_t__ irq; TYPE_1__ dev; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int IRQ_NOAUTOEN ;
 int IRQ_TYPE_EDGE_RISING ;
 scalar_t__ IS_ERR (struct ieee80211_hw*) ;
 int PTR_ERR (struct ieee80211_hw*) ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,TYPE_1__*) ;
 int free_irq (scalar_t__,struct wl1251*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int irq_set_irq_type (scalar_t__,int ) ;
 int irq_set_status_flags (scalar_t__,int ) ;
 int request_irq (scalar_t__,int ,int ,int ,struct wl1251*) ;
 int spi_set_drvdata (struct spi_device*,struct wl1251*) ;
 int spi_setup (struct spi_device*) ;
 struct ieee80211_hw* wl1251_alloc_hw () ;
 int wl1251_error (char*,...) ;
 int wl1251_init_ieee80211 (struct wl1251*) ;
 int wl1251_irq ;
 int wl1251_spi_ops ;

__attribute__((used)) static int wl1251_spi_probe(struct spi_device *spi)
{
 struct wl12xx_platform_data *pdata;
 struct ieee80211_hw *hw;
 struct wl1251 *wl;
 int ret;

 pdata = spi->dev.platform_data;
 if (!pdata) {
  wl1251_error("no platform data");
  return -ENODEV;
 }

 hw = wl1251_alloc_hw();
 if (IS_ERR(hw))
  return PTR_ERR(hw);

 wl = hw->priv;

 SET_IEEE80211_DEV(hw, &spi->dev);
 spi_set_drvdata(spi, wl);
 wl->if_priv = spi;
 wl->if_ops = &wl1251_spi_ops;



 spi->bits_per_word = 32;

 ret = spi_setup(spi);
 if (ret < 0) {
  wl1251_error("spi_setup failed");
  goto out_free;
 }

 wl->set_power = pdata->set_power;
 if (!wl->set_power) {
  wl1251_error("set power function missing in platform data");
  return -ENODEV;
 }

 wl->irq = spi->irq;
 if (wl->irq < 0) {
  wl1251_error("irq missing in platform data");
  return -ENODEV;
 }

 wl->use_eeprom = pdata->use_eeprom;

 irq_set_status_flags(wl->irq, IRQ_NOAUTOEN);
 ret = request_irq(wl->irq, wl1251_irq, 0, DRIVER_NAME, wl);
 if (ret < 0) {
  wl1251_error("request_irq() failed: %d", ret);
  goto out_free;
 }

 irq_set_irq_type(wl->irq, IRQ_TYPE_EDGE_RISING);

 ret = wl1251_init_ieee80211(wl);
 if (ret)
  goto out_irq;

 return 0;

 out_irq:
 free_irq(wl->irq, wl);

 out_free:
 ieee80211_free_hw(hw);

 return ret;
}
