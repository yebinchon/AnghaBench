
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rt2x00_dev {int tx_power; TYPE_3__* hw; } ;
struct TYPE_4__ {int chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;


 int rt2800_config_txpower (struct rt2x00_dev*,int ,int ) ;

void rt2800_gain_calibration(struct rt2x00_dev *rt2x00dev)
{
 rt2800_config_txpower(rt2x00dev, rt2x00dev->hw->conf.chandef.chan,
         rt2x00dev->tx_power);
}
