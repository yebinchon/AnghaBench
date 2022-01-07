
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dev; } ;
struct net_device {int base_addr; int irq; int dma; int mem_start; unsigned int dev_addr; int if_port; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; int name; } ;
struct corkscrew_private {char* product_name; int options; int media_override; int full_duplex; int bus_master; int available_media; int default_media; int autoselect; unsigned int capabilities; int full_bus_master_tx; int full_bus_master_rx; int lock; int list; struct net_device* our_dev; int * dev; } ;
typedef int __u32 ;
typedef int __be16 ;
struct TYPE_2__ {int name; } ;


 int Autoselect ;
 scalar_t__ EEPROM_Read ;
 int EL3WINDOW (int) ;
 int HZ ;
 int MAX_UNITS ;
 int Ram_size ;
 int Ram_split ;
 int Ram_split_shift ;
 int Ram_width ;
 int Wn0EepromCmd ;
 int Wn0EepromData ;
 scalar_t__ Wn3_Config ;
 int Wn3_Options ;
 int Xcvr ;
 int Xcvr_shift ;
 int corkscrew_debug ;
 int htons (unsigned int) ;
 int inl (scalar_t__) ;
 int inw (int) ;
 int list_add (int *,int *) ;
 TYPE_1__* media_tbl ;
 int netdev_ethtool_ops ;
 int netdev_ops ;
 struct corkscrew_private* netdev_priv (struct net_device*) ;
 int* options ;
 int outw (scalar_t__,int) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 int pr_cont (char*,unsigned int) ;
 int pr_info (char*,int,...) ;
 int pr_warning (char*) ;
 int register_netdev (struct net_device*) ;
 scalar_t__ request_dma (int,char*) ;
 int root_corkscrew_dev ;
 int spin_lock_init (int *) ;
 int udelay (int) ;

__attribute__((used)) static int corkscrew_setup(struct net_device *dev, int ioaddr,
       struct pnp_dev *idev, int card_number)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 unsigned int eeprom[0x40], checksum = 0;
 int i;
 int irq;
 irq = inw(ioaddr + 0x2002) & 15;


 dev->base_addr = ioaddr;
 dev->irq = irq;
 dev->dma = inw(ioaddr + 0x2000) & 7;
 vp->product_name = "3c515";
 vp->options = dev->mem_start;
 vp->our_dev = dev;

 if (!vp->options) {
   if (card_number >= MAX_UNITS)
   vp->options = -1;
  else
   vp->options = options[card_number];
 }

 if (vp->options >= 0) {
  vp->media_override = vp->options & 7;
  if (vp->media_override == 2)
   vp->media_override = 0;
  vp->full_duplex = (vp->options & 8) ? 1 : 0;
  vp->bus_master = (vp->options & 16) ? 1 : 0;
 } else {
  vp->media_override = 7;
  vp->full_duplex = 0;
  vp->bus_master = 0;
 }




 pr_info("%s: 3Com %s at %#3x,", dev->name, vp->product_name, ioaddr);

 spin_lock_init(&vp->lock);


 EL3WINDOW(0);
 for (i = 0; i < 0x18; i++) {
  __be16 *phys_addr = (__be16 *) dev->dev_addr;
  int timer;
  outw(EEPROM_Read + i, ioaddr + Wn0EepromCmd);

  for (timer = 4; timer >= 0; timer--) {
   udelay(162);
   if ((inw(ioaddr + Wn0EepromCmd) & 0x0200) == 0)
    break;
  }
  eeprom[i] = inw(ioaddr + Wn0EepromData);
  checksum ^= eeprom[i];
  if (i < 3)
   phys_addr[i] = htons(eeprom[i]);
 }
 checksum = (checksum ^ (checksum >> 8)) & 0xff;
 if (checksum != 0x00)
  pr_cont(" ***INVALID CHECKSUM %4.4x*** ", checksum);
 pr_cont(" %pM", dev->dev_addr);
 if (eeprom[16] == 0x11c7) {
  if (request_dma(dev->dma, "3c515")) {
   pr_cont(", DMA %d allocation failed", dev->dma);
   dev->dma = 0;
  } else
   pr_cont(", DMA %d", dev->dma);
 }
 pr_cont(", IRQ %d\n", dev->irq);

 if (corkscrew_debug && (dev->irq <= 0 || dev->irq > 15))
  pr_warning(" *** Warning: this IRQ is unlikely to work! ***\n");

 {
  char *ram_split[] = { "5:3", "3:1", "1:1", "3:5" };
  __u32 config;
  EL3WINDOW(3);
  vp->available_media = inw(ioaddr + Wn3_Options);
  config = inl(ioaddr + Wn3_Config);
  if (corkscrew_debug > 1)
   pr_info("  Internal config register is %4.4x, transceivers %#x.\n",
    config, inw(ioaddr + Wn3_Options));
  pr_info("  %dK %s-wide RAM %s Rx:Tx split, %s%s interface.\n",
   8 << config & Ram_size,
   config & Ram_width ? "word" : "byte",
   ram_split[(config & Ram_split) >> Ram_split_shift],
   config & Autoselect ? "autoselect/" : "",
   media_tbl[(config & Xcvr) >> Xcvr_shift].name);
  vp->default_media = (config & Xcvr) >> Xcvr_shift;
  vp->autoselect = config & Autoselect ? 1 : 0;
  dev->if_port = vp->default_media;
 }
 if (vp->media_override != 7) {
  pr_info("  Media override to transceiver type %d (%s).\n",
         vp->media_override,
         media_tbl[vp->media_override].name);
  dev->if_port = vp->media_override;
 }

 vp->capabilities = eeprom[16];
 vp->full_bus_master_tx = (vp->capabilities & 0x20) ? 1 : 0;


 vp->full_bus_master_rx = (vp->capabilities & 0x20) ? 1 : 0;


 dev->netdev_ops = &netdev_ops;
 dev->watchdog_timeo = (400 * HZ) / 1000;
 dev->ethtool_ops = &netdev_ethtool_ops;

 return register_netdev(dev);
}
