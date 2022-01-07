
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dev; } ;
struct net_device {int name; } ;
struct corkscrew_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ driver_data; int function; } ;


 int ENOMEM ;
 struct net_device* ERR_PTR (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int check_device (int) ;
 int cleanup_card (struct net_device*) ;
 scalar_t__ corkscrew_debug ;
 TYPE_1__* corkscrew_isapnp_adapters ;
 int corkscrew_setup (struct net_device*,int,struct pnp_dev*,int ) ;
 int free_netdev (struct net_device*) ;
 int inl (int) ;
 int inw (int) ;
 int netdev_boot_setup_check (struct net_device*) ;
 int nopnp ;
 scalar_t__ pnp_activate_dev (struct pnp_dev*) ;
 scalar_t__ pnp_device_attach (struct pnp_dev*) ;
 int pnp_device_detach (struct pnp_dev*) ;
 struct pnp_dev* pnp_find_dev (int *,scalar_t__,int ,struct pnp_dev*) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 int pnp_irq_valid (struct pnp_dev*,int ) ;
 int pnp_port_start (struct pnp_dev*,int ) ;
 int pnp_port_valid (struct pnp_dev*,int ) ;
 int pr_debug (char*,char*,int,int) ;
 int pr_info (char*,int ,int ) ;
 int pr_warning (char*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static struct net_device *corkscrew_scan(int unit)
{
 struct net_device *dev;
 static int cards_found = 0;
 static int ioaddr;
 int err;





 dev = alloc_etherdev(sizeof(struct corkscrew_private));
 if (!dev)
  return ERR_PTR(-ENOMEM);

 if (unit >= 0) {
  sprintf(dev->name, "eth%d", unit);
  netdev_boot_setup_check(dev);
 }
 for (ioaddr = 0x100; ioaddr < 0x400; ioaddr += 0x20) {
  if (!check_device(ioaddr))
   continue;

  pr_info("3c515 Resource configuration register %#4.4x, DCR %4.4x.\n",
       inl(ioaddr + 0x2002), inw(ioaddr + 0x2000));
  err = corkscrew_setup(dev, ioaddr, ((void*)0), cards_found++);
  if (!err)
   return dev;
  cleanup_card(dev);
 }
 free_netdev(dev);
 return ((void*)0);
}
