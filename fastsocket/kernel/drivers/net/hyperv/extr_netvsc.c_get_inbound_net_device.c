
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int num_outstanding_sends; scalar_t__ destroy; } ;
struct hv_device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;

__attribute__((used)) static struct netvsc_device *get_inbound_net_device(struct hv_device *device)
{
 struct netvsc_device *net_device;

 net_device = hv_get_drvdata(device);

 if (!net_device)
  goto get_in_err;

 if (net_device->destroy &&
  atomic_read(&net_device->num_outstanding_sends) == 0)
  net_device = ((void*)0);

get_in_err:
 return net_device;
}
