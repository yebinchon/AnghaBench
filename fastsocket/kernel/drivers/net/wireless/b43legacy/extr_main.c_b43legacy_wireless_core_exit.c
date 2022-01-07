
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_phy {int * lo_control; int * tssi2dbm; scalar_t__ dyn_tssi_tbl; } ;
struct b43legacy_wldev {TYPE_1__* dev; TYPE_2__* wl; struct b43legacy_phy phy; } ;
struct TYPE_4__ {int * current_beacon; } ;
struct TYPE_3__ {int bus; } ;


 int B43legacy_MACCTL_PSM_JMP0 ;
 int B43legacy_MACCTL_PSM_RUN ;
 int B43legacy_MMIO_MACCTL ;
 scalar_t__ B43legacy_STAT_INITIALIZED ;
 int B43legacy_STAT_UNINIT ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_chip_exit (struct b43legacy_wldev*) ;
 int b43legacy_dma_free (struct b43legacy_wldev*) ;
 int b43legacy_leds_exit (struct b43legacy_wldev*) ;
 int b43legacy_pio_free (struct b43legacy_wldev*) ;
 int b43legacy_radio_turn_off (struct b43legacy_wldev*,int) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_rng_exit (TYPE_2__*) ;
 int b43legacy_set_status (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_switch_analog (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int dev_kfree_skb_any (int *) ;
 int kfree (int *) ;
 int ssb_bus_may_powerdown (int ) ;
 int ssb_device_disable (TYPE_1__*,int ) ;

__attribute__((used)) static void b43legacy_wireless_core_exit(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 u32 macctl;

 B43legacy_WARN_ON(b43legacy_status(dev) > B43legacy_STAT_INITIALIZED);
 if (b43legacy_status(dev) != B43legacy_STAT_INITIALIZED)
  return;
 b43legacy_set_status(dev, B43legacy_STAT_UNINIT);


 macctl = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 macctl &= ~B43legacy_MACCTL_PSM_RUN;
 macctl |= B43legacy_MACCTL_PSM_JMP0;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, macctl);

 b43legacy_leds_exit(dev);
 b43legacy_rng_exit(dev->wl);
 b43legacy_pio_free(dev);
 b43legacy_dma_free(dev);
 b43legacy_chip_exit(dev);
 b43legacy_radio_turn_off(dev, 1);
 b43legacy_switch_analog(dev, 0);
 if (phy->dyn_tssi_tbl)
  kfree(phy->tssi2dbm);
 kfree(phy->lo_control);
 phy->lo_control = ((void*)0);
 if (dev->wl->current_beacon) {
  dev_kfree_skb_any(dev->wl->current_beacon);
  dev->wl->current_beacon = ((void*)0);
 }

 ssb_device_disable(dev->dev, 0);
 ssb_bus_may_powerdown(dev->dev->bus);
}
