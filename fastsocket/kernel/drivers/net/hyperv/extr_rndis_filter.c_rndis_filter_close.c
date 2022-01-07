
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int extension; } ;
struct hv_device {int dummy; } ;


 int EINVAL ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int rndis_filter_close_device (int ) ;

int rndis_filter_close(struct hv_device *dev)
{
 struct netvsc_device *nvdev = hv_get_drvdata(dev);

 if (!nvdev)
  return -EINVAL;

 return rndis_filter_close_device(nvdev->extension);
}
