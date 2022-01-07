
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
typedef int u16 ;
struct b43_phy {scalar_t__ type; TYPE_1__* ops; scalar_t__ gmode; } ;
struct b43_wldev {int wl; TYPE_5__* dev; struct b43_phy phy; } ;
struct TYPE_10__ {int core_rev; int bus_type; TYPE_4__* sdev; } ;
struct TYPE_9__ {TYPE_3__* bus; } ;
struct TYPE_7__ {int fast_pwrup_delay; } ;
struct TYPE_8__ {TYPE_2__ chipco; } ;
struct TYPE_6__ {int (* set_rx_antenna ) (struct b43_wldev*,int ) ;int (* interf_mitigation ) (struct b43_wldev*,int ) ;int (* switch_analog ) (struct b43_wldev*,int) ;} ;


 int B43_ANTENNA_DEFAULT ;


 int B43_INTERFMODE_NONE ;
 int B43_MACCTL_GMODE ;
 int B43_MACCTL_IHR_ENABLED ;
 int B43_MACCTL_INFRA ;
 int B43_MACCTL_SHM_ENABLED ;
 int B43_MMIO_DMA0_IRQ_MASK ;
 int B43_MMIO_DMA1_IRQ_MASK ;
 int B43_MMIO_DMA2_IRQ_MASK ;
 int B43_MMIO_DMA3_IRQ_MASK ;
 int B43_MMIO_DMA4_IRQ_MASK ;
 int B43_MMIO_DMA5_IRQ_MASK ;
 int B43_MMIO_GEN_IRQ_REASON ;
 int B43_MMIO_MACCTL ;
 int B43_MMIO_POWERUP_DELAY ;
 scalar_t__ B43_PHYTYPE_B ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_PRMAXTIME ;
 int b43_adjust_opmode (struct b43_wldev*) ;
 int b43_gpio_cleanup (struct b43_wldev*) ;
 int b43_gpio_init (struct b43_wldev*) ;
 int b43_mac_phy_clock_set (struct b43_wldev*,int) ;
 int b43_maskset32 (struct b43_wldev*,int,int,int) ;
 int b43_mgmtframe_txantenna (struct b43_wldev*,int ) ;
 int b43_phy_init (struct b43_wldev*) ;
 int b43_read16 (struct b43_wldev*,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int ) ;
 int b43_upload_initvals (struct b43_wldev*) ;
 int b43_upload_microcode (struct b43_wldev*) ;
 int b43_write16 (struct b43_wldev*,int,int) ;
 int b43_write32 (struct b43_wldev*,int,int) ;
 int b43dbg (int ,char*) ;
 int stub1 (struct b43_wldev*,int) ;
 int stub2 (struct b43_wldev*,int ) ;
 int stub3 (struct b43_wldev*,int ) ;

__attribute__((used)) static int b43_chip_init(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 int err;
 u32 macctl;
 u16 value16;


 macctl = B43_MACCTL_IHR_ENABLED | B43_MACCTL_SHM_ENABLED;
 if (dev->phy.gmode)
  macctl |= B43_MACCTL_GMODE;
 macctl |= B43_MACCTL_INFRA;
 b43_write32(dev, B43_MMIO_MACCTL, macctl);

 err = b43_upload_microcode(dev);
 if (err)
  goto out;

 err = b43_gpio_init(dev);
 if (err)
  goto out;

 err = b43_upload_initvals(dev);
 if (err)
  goto err_gpio_clean;


 phy->ops->switch_analog(dev, 1);
 err = b43_phy_init(dev);
 if (err)
  goto err_gpio_clean;


 if (phy->ops->interf_mitigation)
  phy->ops->interf_mitigation(dev, B43_INTERFMODE_NONE);


 if (phy->ops->set_rx_antenna)
  phy->ops->set_rx_antenna(dev, B43_ANTENNA_DEFAULT);
 b43_mgmtframe_txantenna(dev, B43_ANTENNA_DEFAULT);

 if (phy->type == B43_PHYTYPE_B) {
  value16 = b43_read16(dev, 0x005E);
  value16 |= 0x0004;
  b43_write16(dev, 0x005E, value16);
 }
 b43_write32(dev, 0x0100, 0x01000000);
 if (dev->dev->core_rev < 5)
  b43_write32(dev, 0x010C, 0x01000000);

 b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_INFRA, 0);
 b43_maskset32(dev, B43_MMIO_MACCTL, ~0, B43_MACCTL_INFRA);



 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_PRMAXTIME, 0);


 b43_adjust_opmode(dev);

 if (dev->dev->core_rev < 3) {
  b43_write16(dev, 0x060E, 0x0000);
  b43_write16(dev, 0x0610, 0x8000);
  b43_write16(dev, 0x0604, 0x0000);
  b43_write16(dev, 0x0606, 0x0200);
 } else {
  b43_write32(dev, 0x0188, 0x80000000);
  b43_write32(dev, 0x018C, 0x02000000);
 }
 b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, 0x00004000);
 b43_write32(dev, B43_MMIO_DMA0_IRQ_MASK, 0x0001FC00);
 b43_write32(dev, B43_MMIO_DMA1_IRQ_MASK, 0x0000DC00);
 b43_write32(dev, B43_MMIO_DMA2_IRQ_MASK, 0x0000DC00);
 b43_write32(dev, B43_MMIO_DMA3_IRQ_MASK, 0x0001DC00);
 b43_write32(dev, B43_MMIO_DMA4_IRQ_MASK, 0x0000DC00);
 b43_write32(dev, B43_MMIO_DMA5_IRQ_MASK, 0x0000DC00);

 b43_mac_phy_clock_set(dev, 1);

 switch (dev->dev->bus_type) {
 }

 err = 0;
 b43dbg(dev->wl, "Chip initialized\n");
out:
 return err;

err_gpio_clean:
 b43_gpio_cleanup(dev);
 return err;
}
