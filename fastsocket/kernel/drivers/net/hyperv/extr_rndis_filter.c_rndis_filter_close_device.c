
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {scalar_t__ state; } ;


 scalar_t__ RNDIS_DEV_DATAINITIALIZED ;
 scalar_t__ RNDIS_DEV_INITIALIZED ;
 int rndis_filter_set_packet_filter (struct rndis_device*,int ) ;

__attribute__((used)) static int rndis_filter_close_device(struct rndis_device *dev)
{
 int ret;

 if (dev->state != RNDIS_DEV_DATAINITIALIZED)
  return 0;

 ret = rndis_filter_set_packet_filter(dev, 0);
 if (ret == 0)
  dev->state = RNDIS_DEV_INITIALIZED;

 return ret;
}
