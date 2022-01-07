
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int long_frame_max_tx_count; int short_frame_max_tx_count; } ;


 int TX_RTY_CFG ;
 int TX_RTY_CFG_LONG_RTY_LIMIT ;
 int TX_RTY_CFG_SHORT_RTY_LIMIT ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int ) ;

__attribute__((used)) static void rt2800_config_retry_limit(struct rt2x00_dev *rt2x00dev,
          struct rt2x00lib_conf *libconf)
{
 u32 reg;

 rt2800_register_read(rt2x00dev, TX_RTY_CFG, &reg);
 rt2x00_set_field32(&reg, TX_RTY_CFG_SHORT_RTY_LIMIT,
      libconf->conf->short_frame_max_tx_count);
 rt2x00_set_field32(&reg, TX_RTY_CFG_LONG_RTY_LIMIT,
      libconf->conf->long_frame_max_tx_count);
 rt2800_register_write(rt2x00dev, TX_RTY_CFG, reg);
}
