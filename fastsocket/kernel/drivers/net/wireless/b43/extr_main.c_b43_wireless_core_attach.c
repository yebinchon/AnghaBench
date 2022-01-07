
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int device; } ;
struct TYPE_9__ {int gmode; int radio_on; int type; TYPE_3__* ops; } ;
struct b43_wldev {TYPE_4__ phy; int restart_work; TYPE_2__* dev; struct b43_wl* wl; } ;
struct b43_wl {struct b43_wldev* current_dev; } ;
struct TYPE_10__ {TYPE_1__* bus; } ;
struct TYPE_8__ {int (* switch_analog ) (struct b43_wldev*,int ) ;} ;
struct TYPE_7__ {int bus_type; int core_rev; TYPE_5__* sdev; int bdev; } ;
struct TYPE_6__ {scalar_t__ bustype; struct pci_dev* host_pci; } ;


 int B43_BCMA_IOST_2G_PHY ;
 int B43_BCMA_IOST_5G_PHY ;
 int B43_TMSHIGH_HAVE_2GHZ_PHY ;
 int B43_TMSHIGH_HAVE_5GHZ_PHY ;
 int B43_WARN_ON (int) ;
 int BCMA_IOST ;
 int EOPNOTSUPP ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ SSB_BUSTYPE_PCI ;
 int SSB_TMSHIGH ;
 int b43_bus_may_powerdown (struct b43_wldev*) ;
 int b43_bus_powerup (struct b43_wldev*,int ) ;
 int b43_chip_reset ;
 int b43_device_disable (struct b43_wldev*,int ) ;
 int b43_phy_allocate (struct b43_wldev*) ;
 int b43_phy_free (struct b43_wldev*) ;
 int b43_phy_versioning (struct b43_wldev*) ;
 int b43_setup_bands (struct b43_wldev*,int,int) ;
 int b43_validate_chipaccess (struct b43_wldev*) ;
 int b43_wireless_core_reset (struct b43_wldev*,int) ;
 int b43err (struct b43_wl*,char*) ;
 int bcma_aread32 (int ,int ) ;
 int ssb_read32 (TYPE_5__*,int ) ;
 int stub1 (struct b43_wldev*,int ) ;

__attribute__((used)) static int b43_wireless_core_attach(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;
 struct pci_dev *pdev = ((void*)0);
 int err;
 u32 tmp;
 bool have_2ghz_phy = 0, have_5ghz_phy = 0;
 err = b43_bus_powerup(dev, 0);
 if (err) {
  b43err(wl, "Bus powerup failed\n");
  goto out;
 }


 switch (dev->dev->bus_type) {
 }

 dev->phy.gmode = have_2ghz_phy;
 dev->phy.radio_on = 1;
 b43_wireless_core_reset(dev, dev->phy.gmode);

 err = b43_phy_versioning(dev);
 if (err)
  goto err_powerdown;

 if (!pdev ||
     (pdev->device != 0x4312 &&
      pdev->device != 0x4319 && pdev->device != 0x4324)) {

  have_2ghz_phy = 0;
  have_5ghz_phy = 0;
  switch (dev->phy.type) {
  case 133:
   have_5ghz_phy = 1;
   break;
  case 129:



  case 132:
  case 128:
  case 131:
  case 130:
   have_2ghz_phy = 1;
   break;
  default:
   B43_WARN_ON(1);
  }
 }
 if (dev->phy.type == 133) {

  b43err(wl, "IEEE 802.11a devices are unsupported\n");
  err = -EOPNOTSUPP;
  goto err_powerdown;
 }
 if (1 ) {

  if (dev->phy.type != 128 &&
      dev->phy.type != 129) {
   have_2ghz_phy = 1;
   have_5ghz_phy = 0;
  }
 }

 err = b43_phy_allocate(dev);
 if (err)
  goto err_powerdown;

 dev->phy.gmode = have_2ghz_phy;
 b43_wireless_core_reset(dev, dev->phy.gmode);

 err = b43_validate_chipaccess(dev);
 if (err)
  goto err_phy_free;
 err = b43_setup_bands(dev, have_2ghz_phy, have_5ghz_phy);
 if (err)
  goto err_phy_free;


 if (!wl->current_dev)
  wl->current_dev = dev;
 INIT_WORK(&dev->restart_work, b43_chip_reset);

 dev->phy.ops->switch_analog(dev, 0);
 b43_device_disable(dev, 0);
 b43_bus_may_powerdown(dev);

out:
 return err;

err_phy_free:
 b43_phy_free(dev);
err_powerdown:
 b43_bus_may_powerdown(dev);
 return err;
}
