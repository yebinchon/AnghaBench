
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int extension; } ;
struct hv_device {int dummy; } ;


 int EINVAL ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int rndis_filter_open_device (int ) ;

int rndis_filter_open(struct hv_device *dev)
{
 struct netvsc_device *net_device = hv_get_drvdata(dev);

 if (!net_device)
  return -EINVAL;

 return rndis_filter_open_device(net_device->extension);
}
