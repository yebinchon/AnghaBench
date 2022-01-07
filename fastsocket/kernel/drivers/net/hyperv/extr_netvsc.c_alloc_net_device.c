
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int start_remove; int destroy; struct net_device* ndev; struct hv_device* dev; int wait_drain; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;


 int GFP_KERNEL ;
 struct net_device* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,struct netvsc_device*) ;
 int init_waitqueue_head (int *) ;
 struct netvsc_device* kzalloc (int,int ) ;

__attribute__((used)) static struct netvsc_device *alloc_net_device(struct hv_device *device)
{
 struct netvsc_device *net_device;
 struct net_device *ndev = hv_get_drvdata(device);

 net_device = kzalloc(sizeof(struct netvsc_device), GFP_KERNEL);
 if (!net_device)
  return ((void*)0);

 init_waitqueue_head(&net_device->wait_drain);
 net_device->start_remove = 0;
 net_device->destroy = 0;
 net_device->dev = device;
 net_device->ndev = ndev;

 hv_set_drvdata(device, net_device);
 return net_device;
}
