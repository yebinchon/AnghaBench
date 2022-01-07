
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct lapbethdev {int axdev; } ;





 int NOTIFY_DONE ;
 int dev_close (int ) ;
 int dev_is_ethdev (struct net_device*) ;
 int * dev_net (struct net_device*) ;
 int init_net ;
 int lapbeth_free_device (struct lapbethdev*) ;
 struct lapbethdev* lapbeth_get_x25_dev (struct net_device*) ;
 int lapbeth_new_device (struct net_device*) ;

__attribute__((used)) static int lapbeth_device_event(struct notifier_block *this,
    unsigned long event, void *ptr)
{
 struct lapbethdev *lapbeth;
 struct net_device *dev = ptr;

 if (dev_net(dev) != &init_net)
  return NOTIFY_DONE;

 if (!dev_is_ethdev(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:

  if (lapbeth_get_x25_dev(dev) == ((void*)0))
   lapbeth_new_device(dev);
  break;
 case 130:

  lapbeth = lapbeth_get_x25_dev(dev);
  if (lapbeth)
   dev_close(lapbeth->axdev);
  break;
 case 129:

  lapbeth = lapbeth_get_x25_dev(dev);
  if (lapbeth)
   lapbeth_free_device(lapbeth);
  break;
 }

 return NOTIFY_DONE;
}
