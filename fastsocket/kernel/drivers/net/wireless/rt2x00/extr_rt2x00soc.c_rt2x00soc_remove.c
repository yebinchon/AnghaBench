
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct platform_device {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 struct ieee80211_hw* platform_get_drvdata (struct platform_device*) ;
 int rt2x00lib_remove_dev (struct rt2x00_dev*) ;
 int rt2x00soc_free_reg (struct rt2x00_dev*) ;

int rt2x00soc_remove(struct platform_device *pdev)
{
 struct ieee80211_hw *hw = platform_get_drvdata(pdev);
 struct rt2x00_dev *rt2x00dev = hw->priv;




 rt2x00lib_remove_dev(rt2x00dev);
 rt2x00soc_free_reg(rt2x00dev);
 ieee80211_free_hw(hw);

 return 0;
}
