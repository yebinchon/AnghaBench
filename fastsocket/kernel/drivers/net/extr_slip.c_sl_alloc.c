
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct slip {TYPE_1__ outfill_timer; TYPE_1__ keepalive_timer; int mode; int lock; struct net_device* dev; int magic; int flags; } ;
struct net_device {int base_addr; } ;
typedef int dev_t ;


 int IFNAMSIZ ;
 int SLF_INUSE ;
 int SLIP_MAGIC ;
 int SL_MODE_DEFAULT ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 int init_timer (TYPE_1__*) ;
 struct slip* netdev_priv (struct net_device*) ;
 int sl_keepalive ;
 int sl_outfill ;
 int sl_setup ;
 struct net_device** slip_devs ;
 int slip_maxdev ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static struct slip *sl_alloc(dev_t line)
{
 int i;
 struct net_device *dev = ((void*)0);
 struct slip *sl;

 if (slip_devs == ((void*)0))
  return ((void*)0);

 for (i = 0; i < slip_maxdev; i++) {
  dev = slip_devs[i];
  if (dev == ((void*)0))
   break;
 }

 if (i >= slip_maxdev)
  return ((void*)0);

 if (dev) {
  sl = netdev_priv(dev);
  if (test_bit(SLF_INUSE, &sl->flags)) {
   unregister_netdevice(dev);
   dev = ((void*)0);
   slip_devs[i] = ((void*)0);
  }
 }

 if (!dev) {
  char name[IFNAMSIZ];
  sprintf(name, "sl%d", i);

  dev = alloc_netdev(sizeof(*sl), name, sl_setup);
  if (!dev)
   return ((void*)0);
  dev->base_addr = i;
 }

 sl = netdev_priv(dev);


 sl->magic = SLIP_MAGIC;
 sl->dev = dev;
 spin_lock_init(&sl->lock);
 sl->mode = SL_MODE_DEFAULT;
 slip_devs[i] = dev;
 return sl;
}
