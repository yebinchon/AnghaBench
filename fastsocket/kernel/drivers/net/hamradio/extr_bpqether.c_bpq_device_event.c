
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;





 int NOTIFY_DONE ;
 int bpq_free_device (struct net_device*) ;
 struct net_device* bpq_get_ax25_dev (struct net_device*) ;
 int bpq_new_device (struct net_device*) ;
 int dev_close (struct net_device*) ;
 int dev_is_ethdev (struct net_device*) ;
 int * dev_net (struct net_device*) ;
 int init_net ;

__attribute__((used)) static int bpq_device_event(struct notifier_block *this,unsigned long event, void *ptr)
{
 struct net_device *dev = (struct net_device *)ptr;

 if (dev_net(dev) != &init_net)
  return NOTIFY_DONE;

 if (!dev_is_ethdev(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  if (bpq_get_ax25_dev(dev) == ((void*)0))
   bpq_new_device(dev);
  break;

 case 130:
  if ((dev = bpq_get_ax25_dev(dev)) != ((void*)0))
   dev_close(dev);
  break;

 case 129:
  if ((dev = bpq_get_ax25_dev(dev)) != ((void*)0))
   bpq_free_device(dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
