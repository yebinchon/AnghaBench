
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_ops {int hw; } ;
struct rt2x00_dev {int name; int irq; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int RT2X00_CHIP_INTF_SOC ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int ) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ieee80211_hw*) ;
 int rt2x00_probe_err (char*) ;
 int rt2x00_set_chip_intf (struct rt2x00_dev*,int ) ;
 int rt2x00lib_probe_dev (struct rt2x00_dev*) ;
 int rt2x00soc_alloc_reg (struct rt2x00_dev*) ;
 int rt2x00soc_free_reg (struct rt2x00_dev*) ;

int rt2x00soc_probe(struct platform_device *pdev, const struct rt2x00_ops *ops)
{
 struct ieee80211_hw *hw;
 struct rt2x00_dev *rt2x00dev;
 int retval;

 hw = ieee80211_alloc_hw(sizeof(struct rt2x00_dev), ops->hw);
 if (!hw) {
  rt2x00_probe_err("Failed to allocate hardware\n");
  return -ENOMEM;
 }

 platform_set_drvdata(pdev, hw);

 rt2x00dev = hw->priv;
 rt2x00dev->dev = &pdev->dev;
 rt2x00dev->ops = ops;
 rt2x00dev->hw = hw;
 rt2x00dev->irq = platform_get_irq(pdev, 0);
 rt2x00dev->name = pdev->dev.driver->name;

 rt2x00_set_chip_intf(rt2x00dev, RT2X00_CHIP_INTF_SOC);

 retval = rt2x00soc_alloc_reg(rt2x00dev);
 if (retval)
  goto exit_free_device;

 retval = rt2x00lib_probe_dev(rt2x00dev);
 if (retval)
  goto exit_free_reg;

 return 0;

exit_free_reg:
 rt2x00soc_free_reg(rt2x00dev);

exit_free_device:
 ieee80211_free_hw(hw);

 return retval;
}
