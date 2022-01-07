
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct zd_rf {int (* set_channel ) (struct zd_rf*,scalar_t__) ;scalar_t__ channel; } ;
struct TYPE_3__ {int mutex; } ;


 int EINVAL ;
 scalar_t__ MAX_CHANNEL24 ;
 scalar_t__ MIN_CHANNEL24 ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*,scalar_t__) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct zd_rf*,scalar_t__) ;
 int zd_chip_dev (TYPE_1__*) ;
 TYPE_1__* zd_rf_to_chip (struct zd_rf*) ;

int zd_rf_set_channel(struct zd_rf *rf, u8 channel)
{
 int r;

 ZD_ASSERT(mutex_is_locked(&zd_rf_to_chip(rf)->mutex));
 if (channel < MIN_CHANNEL24)
  return -EINVAL;
 if (channel > MAX_CHANNEL24)
  return -EINVAL;
 dev_dbg_f(zd_chip_dev(zd_rf_to_chip(rf)), "channel: %d\n", channel);

 r = rf->set_channel(rf, channel);
 if (r >= 0)
  rf->channel = channel;
 return r;
}
