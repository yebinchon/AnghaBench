
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int hw_mac_adr; scalar_t__ link_state; struct netvsc_device* net_dev; } ;
struct netvsc_device_info {scalar_t__ link_state; int mac_adr; } ;
struct netvsc_device {struct rndis_device* extension; } ;
struct hv_device {int device; } ;


 int ENODEV ;
 int ETH_ALEN ;
 int dev_info (int *,char*,int ,char*) ;
 struct rndis_device* get_rndis_device () ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int kfree (struct rndis_device*) ;
 int memcpy (int ,int ,int ) ;
 int netvsc_device_add (struct hv_device*,void*) ;
 int rndis_filter_device_remove (struct hv_device*) ;
 int rndis_filter_init_device (struct rndis_device*) ;
 int rndis_filter_query_device_link_status (struct rndis_device*) ;
 int rndis_filter_query_device_mac (struct rndis_device*) ;

int rndis_filter_device_add(struct hv_device *dev,
      void *additional_info)
{
 int ret;
 struct netvsc_device *net_device;
 struct rndis_device *rndis_device;
 struct netvsc_device_info *device_info = additional_info;

 rndis_device = get_rndis_device();
 if (!rndis_device)
  return -ENODEV;






 ret = netvsc_device_add(dev, additional_info);
 if (ret != 0) {
  kfree(rndis_device);
  return ret;
 }



 net_device = hv_get_drvdata(dev);

 net_device->extension = rndis_device;
 rndis_device->net_dev = net_device;


 ret = rndis_filter_init_device(rndis_device);
 if (ret != 0) {
  rndis_filter_device_remove(dev);
  return ret;
 }


 ret = rndis_filter_query_device_mac(rndis_device);
 if (ret != 0) {
  rndis_filter_device_remove(dev);
  return ret;
 }

 memcpy(device_info->mac_adr, rndis_device->hw_mac_adr, ETH_ALEN);

 rndis_filter_query_device_link_status(rndis_device);

 device_info->link_state = rndis_device->link_state;

 dev_info(&dev->device, "Device MAC %pM link state %s\n",
   rndis_device->hw_mac_adr,
   device_info->link_state ? "down" : "up");

 return ret;
}
