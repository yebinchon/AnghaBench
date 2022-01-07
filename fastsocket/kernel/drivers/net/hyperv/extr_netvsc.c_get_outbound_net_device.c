
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {scalar_t__ destroy; } ;
struct hv_device {int dummy; } ;


 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;

__attribute__((used)) static struct netvsc_device *get_outbound_net_device(struct hv_device *device)
{
 struct netvsc_device *net_device;

 net_device = hv_get_drvdata(device);
 if (net_device && net_device->destroy)
  net_device = ((void*)0);

 return net_device;
}
