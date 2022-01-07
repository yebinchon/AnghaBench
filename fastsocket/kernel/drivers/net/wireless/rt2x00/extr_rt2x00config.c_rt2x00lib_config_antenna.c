
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct antenna_setup {scalar_t__ rx; scalar_t__ tx; } ;
struct link_ant {int flags; struct antenna_setup active; } ;
struct TYPE_4__ {struct link_ant ant; } ;
struct rt2x00_dev {int rx; int flags; TYPE_3__* ops; TYPE_1__ link; struct antenna_setup default_ant; } ;
typedef int config ;
struct TYPE_6__ {TYPE_2__* lib; } ;
struct TYPE_5__ {int (* config_ant ) (struct rt2x00_dev*,struct antenna_setup*) ;} ;


 void* ANTENNA_B ;
 int ANTENNA_RX_DIVERSITY ;
 scalar_t__ ANTENNA_SW_DIVERSITY ;
 int ANTENNA_TX_DIVERSITY ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int memcpy (struct antenna_setup*,struct antenna_setup*,int) ;
 int rt2x00link_reset_tuner (struct rt2x00_dev*,int) ;
 int rt2x00queue_start_queue (int ) ;
 int rt2x00queue_stop_queue (int ) ;
 int stub1 (struct rt2x00_dev*,struct antenna_setup*) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_config_antenna(struct rt2x00_dev *rt2x00dev,
         struct antenna_setup config)
{
 struct link_ant *ant = &rt2x00dev->link.ant;
 struct antenna_setup *def = &rt2x00dev->default_ant;
 struct antenna_setup *active = &rt2x00dev->link.ant.active;
 if (!(ant->flags & ANTENNA_RX_DIVERSITY)) {
  if (config.rx == ANTENNA_SW_DIVERSITY) {
   ant->flags |= ANTENNA_RX_DIVERSITY;

   if (def->rx == ANTENNA_SW_DIVERSITY)
    config.rx = ANTENNA_B;
   else
    config.rx = def->rx;
  }
 } else if (config.rx == ANTENNA_SW_DIVERSITY)
  config.rx = active->rx;

 if (!(ant->flags & ANTENNA_TX_DIVERSITY)) {
  if (config.tx == ANTENNA_SW_DIVERSITY) {
   ant->flags |= ANTENNA_TX_DIVERSITY;

   if (def->tx == ANTENNA_SW_DIVERSITY)
    config.tx = ANTENNA_B;
   else
    config.tx = def->tx;
  }
 } else if (config.tx == ANTENNA_SW_DIVERSITY)
  config.tx = active->tx;





 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt2x00queue_stop_queue(rt2x00dev->rx);






 rt2x00dev->ops->lib->config_ant(rt2x00dev, &config);

 rt2x00link_reset_tuner(rt2x00dev, 1);

 memcpy(active, &config, sizeof(config));

 if (test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  rt2x00queue_start_queue(rt2x00dev->rx);
}
