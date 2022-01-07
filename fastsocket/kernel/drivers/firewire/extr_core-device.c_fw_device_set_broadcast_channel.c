
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int fw_device (struct device*) ;
 scalar_t__ is_fw_device (struct device*) ;
 int set_broadcast_channel (int ,long) ;

int fw_device_set_broadcast_channel(struct device *dev, void *gen)
{
 if (is_fw_device(dev))
  set_broadcast_channel(fw_device(dev), (long)gen);

 return 0;
}
