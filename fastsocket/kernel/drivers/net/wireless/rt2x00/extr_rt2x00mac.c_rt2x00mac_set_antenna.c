
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct antenna_setup {int tx; int rx; } ;
struct link_ant {int flags; } ;
struct TYPE_2__ {struct link_ant ant; } ;
struct rt2x00_dev {struct antenna_setup default_ant; TYPE_1__ link; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int ANTENNA_RX_DIVERSITY ;
 int ANTENNA_SW_DIVERSITY ;
 int ANTENNA_TX_DIVERSITY ;
 int EINVAL ;
 int rt2x00lib_config_antenna (struct rt2x00_dev*,struct antenna_setup) ;

int rt2x00mac_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct link_ant *ant = &rt2x00dev->link.ant;
 struct antenna_setup *def = &rt2x00dev->default_ant;
 struct antenna_setup setup;



 if (!tx_ant || (tx_ant & ~3) || !rx_ant || (rx_ant & ~3))
  return -EINVAL;




 if (ant->flags & ANTENNA_TX_DIVERSITY && tx_ant != 3)
  ant->flags &= ~ANTENNA_TX_DIVERSITY;
 if (ant->flags & ANTENNA_RX_DIVERSITY && rx_ant != 3)
  ant->flags &= ~ANTENNA_RX_DIVERSITY;





 if (tx_ant == 3 && def->tx == ANTENNA_SW_DIVERSITY) {
  tx_ant = ANTENNA_SW_DIVERSITY;
  ant->flags |= ANTENNA_TX_DIVERSITY;
 }

 if (rx_ant == 3 && def->rx == ANTENNA_SW_DIVERSITY) {
  rx_ant = ANTENNA_SW_DIVERSITY;
  ant->flags |= ANTENNA_RX_DIVERSITY;
 }

 setup.tx = tx_ant;
 setup.rx = rx_ant;

 rt2x00lib_config_antenna(rt2x00dev, setup);

 return 0;
}
