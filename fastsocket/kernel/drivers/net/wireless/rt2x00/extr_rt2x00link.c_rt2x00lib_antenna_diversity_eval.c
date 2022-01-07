
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_ant {int flags; int active; } ;
struct TYPE_2__ {struct link_ant ant; } ;
struct rt2x00_dev {TYPE_1__ link; } ;
struct antenna_setup {scalar_t__ rx; scalar_t__ tx; } ;
typedef int new_ant ;


 scalar_t__ ANTENNA_A ;
 scalar_t__ ANTENNA_B ;
 int ANTENNA_MODE_SAMPLE ;
 int ANTENNA_RX_DIVERSITY ;
 int ANTENNA_TX_DIVERSITY ;
 int abs (int) ;
 int memcpy (struct antenna_setup*,int *,int) ;
 int rt2x00lib_config_antenna (struct rt2x00_dev*,struct antenna_setup) ;
 int rt2x00link_antenna_get_link_rssi (struct rt2x00_dev*) ;
 int rt2x00link_antenna_get_rssi_history (struct rt2x00_dev*) ;
 int rt2x00link_antenna_update_rssi_history (struct rt2x00_dev*,int) ;

__attribute__((used)) static void rt2x00lib_antenna_diversity_eval(struct rt2x00_dev *rt2x00dev)
{
 struct link_ant *ant = &rt2x00dev->link.ant;
 struct antenna_setup new_ant;
 int rssi_curr;
 int rssi_old;

 memcpy(&new_ant, &ant->active, sizeof(new_ant));





 rssi_curr = rt2x00link_antenna_get_link_rssi(rt2x00dev);
 rssi_old = rt2x00link_antenna_get_rssi_history(rt2x00dev);
 rt2x00link_antenna_update_rssi_history(rt2x00dev, rssi_curr);
 if (abs(rssi_curr - rssi_old) < 5)
  return;

 ant->flags |= ANTENNA_MODE_SAMPLE;

 if (ant->flags & ANTENNA_RX_DIVERSITY)
  new_ant.rx = (new_ant.rx == ANTENNA_A) ? ANTENNA_B : ANTENNA_A;

 if (ant->flags & ANTENNA_TX_DIVERSITY)
  new_ant.tx = (new_ant.tx == ANTENNA_A) ? ANTENNA_B : ANTENNA_A;

 rt2x00lib_config_antenna(rt2x00dev, new_ant);
}
