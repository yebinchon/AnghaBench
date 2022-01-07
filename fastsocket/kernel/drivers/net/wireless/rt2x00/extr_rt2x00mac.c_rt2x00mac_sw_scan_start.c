
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int DEVICE_STATE_SCANNING ;
 int rt2x00link_stop_tuner (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;

void rt2x00mac_sw_scan_start(struct ieee80211_hw *hw)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 set_bit(DEVICE_STATE_SCANNING, &rt2x00dev->flags);
 rt2x00link_stop_tuner(rt2x00dev);
}
