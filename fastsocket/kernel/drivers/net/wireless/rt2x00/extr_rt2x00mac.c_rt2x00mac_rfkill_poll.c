
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {TYPE_2__* ops; } ;
struct ieee80211_hw {int wiphy; struct rt2x00_dev* priv; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* rfkill_poll ) (struct rt2x00_dev*) ;} ;


 int stub1 (struct rt2x00_dev*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

void rt2x00mac_rfkill_poll(struct ieee80211_hw *hw)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 bool active = !!rt2x00dev->ops->lib->rfkill_poll(rt2x00dev);

 wiphy_rfkill_set_hw_state(hw->wiphy, !active);
}
