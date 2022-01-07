
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct zd_mac {int chip; int lock; int channel; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct TYPE_3__ {int hw_value; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zd_chip_set_channel (int *,int ) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;

__attribute__((used)) static int zd_op_config(struct ieee80211_hw *hw, u32 changed)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 struct ieee80211_conf *conf = &hw->conf;

 spin_lock_irq(&mac->lock);
 mac->channel = conf->chandef.chan->hw_value;
 spin_unlock_irq(&mac->lock);

 return zd_chip_set_channel(&mac->chip, conf->chandef.chan->hw_value);
}
