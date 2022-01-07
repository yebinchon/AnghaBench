
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct rt2x00_dev {TYPE_1__* tx; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_2__ {int cw_max; int cw_min; } ;


 int EINVAL ;
 int rt2400pci_config_cw (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt2x00mac_conf_tx (struct ieee80211_hw*,struct ieee80211_vif*,scalar_t__,struct ieee80211_tx_queue_params const*) ;

__attribute__((used)) static int rt2400pci_conf_tx(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif, u16 queue,
        const struct ieee80211_tx_queue_params *params)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;






 if (queue != 0)
  return -EINVAL;

 if (rt2x00mac_conf_tx(hw, vif, queue, params))
  return -EINVAL;




 rt2400pci_config_cw(rt2x00dev,
       rt2x00dev->tx->cw_min, rt2x00dev->tx->cw_max);

 return 0;
}
