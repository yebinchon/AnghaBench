
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ssb_sprom {int boardflags_lo; } ;
struct ssb_bus {int pcicore; struct ssb_sprom sprom; } ;
struct b43legacy_phy {scalar_t__ type; int rev; int radio_ver; int * lo_control; int * tssi2dbm; scalar_t__ dyn_tssi_tbl; int _lo_pairs; scalar_t__ gmode; } ;
struct b43legacy_wldev {struct b43legacy_wl* wl; TYPE_2__* dev; struct b43legacy_phy phy; } ;
struct b43legacy_wl {int hw; } ;
struct b43legacy_lopair {int dummy; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_5__ {TYPE_1__ id; struct ssb_bus* bus; } ;


 int B43legacy_BFL_PACTRL ;
 int B43legacy_DEFAULT_LONG_RETRY_LIMIT ;
 int B43legacy_DEFAULT_SHORT_RETRY_LIMIT ;
 int B43legacy_HF_GDCW ;
 int B43legacy_HF_OFDMPABOOST ;
 int B43legacy_HF_SYMW ;
 int B43legacy_LO_COUNT ;
 scalar_t__ B43legacy_PHYTYPE_B ;
 scalar_t__ B43legacy_PHYTYPE_G ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_PRMAXTIME ;
 int B43legacy_SHM_SH_WLCOREREV ;
 int B43legacy_SHM_WIRELESS ;
 int B43legacy_STAT_INITIALIZED ;
 scalar_t__ B43legacy_STAT_UNINIT ;
 int B43legacy_TMSLOW_GMODE ;
 int B43legacy_WARN_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int b43legacy_chip_exit (struct b43legacy_wldev*) ;
 int b43legacy_chip_init (struct b43legacy_wldev*) ;
 int b43legacy_dma_init (struct b43legacy_wldev*) ;
 int b43legacy_hf_read (struct b43legacy_wldev*) ;
 int b43legacy_hf_write (struct b43legacy_wldev*,int ) ;
 int b43legacy_leds_init (struct b43legacy_wldev*) ;
 int b43legacy_phy_calibrate (struct b43legacy_wldev*) ;
 int b43legacy_phy_init_tssi2dbm_table (struct b43legacy_wldev*) ;
 int b43legacy_pio_init (struct b43legacy_wldev*) ;
 int b43legacy_qos_init (struct b43legacy_wldev*) ;
 int b43legacy_rate_memory_init (struct b43legacy_wldev*) ;
 int b43legacy_rng_init (struct b43legacy_wl*) ;
 int b43legacy_security_init (struct b43legacy_wldev*) ;
 int b43legacy_set_retry_limits (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_set_status (struct b43legacy_wldev*,int ) ;
 int b43legacy_set_synth_pu_delay (struct b43legacy_wldev*,int) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,int) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_upload_card_macaddress (struct b43legacy_wldev*) ;
 scalar_t__ b43legacy_using_pio (struct b43legacy_wldev*) ;
 int b43legacy_wireless_core_reset (struct b43legacy_wldev*,int ) ;
 int ieee80211_wake_queues (int ) ;
 int kfree (int *) ;
 int kzalloc (int,int ) ;
 int prepare_phy_data_for_init (struct b43legacy_wldev*) ;
 int setup_struct_wldev_for_init (struct b43legacy_wldev*) ;
 int ssb_bus_may_powerdown (struct ssb_bus*) ;
 int ssb_bus_powerup (struct ssb_bus*,int) ;
 int ssb_device_is_enabled (TYPE_2__*) ;
 int ssb_pcicore_dev_irqvecs_enable (int *,TYPE_2__*) ;

__attribute__((used)) static int b43legacy_wireless_core_init(struct b43legacy_wldev *dev)
{
 struct b43legacy_wl *wl = dev->wl;
 struct ssb_bus *bus = dev->dev->bus;
 struct b43legacy_phy *phy = &dev->phy;
 struct ssb_sprom *sprom = &dev->dev->bus->sprom;
 int err;
 u32 hf;
 u32 tmp;

 B43legacy_WARN_ON(b43legacy_status(dev) != B43legacy_STAT_UNINIT);

 err = ssb_bus_powerup(bus, 0);
 if (err)
  goto out;
 if (!ssb_device_is_enabled(dev->dev)) {
  tmp = phy->gmode ? B43legacy_TMSLOW_GMODE : 0;
  b43legacy_wireless_core_reset(dev, tmp);
 }

 if ((phy->type == B43legacy_PHYTYPE_B) ||
     (phy->type == B43legacy_PHYTYPE_G)) {
  phy->_lo_pairs = kzalloc(sizeof(struct b43legacy_lopair)
      * B43legacy_LO_COUNT,
      GFP_KERNEL);
  if (!phy->_lo_pairs)
   return -ENOMEM;
 }
 setup_struct_wldev_for_init(dev);

 err = b43legacy_phy_init_tssi2dbm_table(dev);
 if (err)
  goto err_kfree_lo_control;


 ssb_pcicore_dev_irqvecs_enable(&bus->pcicore, dev->dev);

 prepare_phy_data_for_init(dev);
 b43legacy_phy_calibrate(dev);
 err = b43legacy_chip_init(dev);
 if (err)
  goto err_kfree_tssitbl;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_WLCOREREV,
         dev->dev->id.revision);
 hf = b43legacy_hf_read(dev);
 if (phy->type == B43legacy_PHYTYPE_G) {
  hf |= B43legacy_HF_SYMW;
  if (phy->rev == 1)
   hf |= B43legacy_HF_GDCW;
  if (sprom->boardflags_lo & B43legacy_BFL_PACTRL)
   hf |= B43legacy_HF_OFDMPABOOST;
 } else if (phy->type == B43legacy_PHYTYPE_B) {
  hf |= B43legacy_HF_SYMW;
  if (phy->rev >= 2 && phy->radio_ver == 0x2050)
   hf &= ~B43legacy_HF_GDCW;
 }
 b43legacy_hf_write(dev, hf);

 b43legacy_set_retry_limits(dev,
       B43legacy_DEFAULT_SHORT_RETRY_LIMIT,
       B43legacy_DEFAULT_LONG_RETRY_LIMIT);

 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         0x0044, 3);
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         0x0046, 2);





 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_PRMAXTIME, 1);

 b43legacy_rate_memory_init(dev);


 if (phy->type == B43legacy_PHYTYPE_B)
  b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS,
          0x0003, 31);
 else
  b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS,
          0x0003, 15);

 b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS,
         0x0004, 1023);

 do {
  if (b43legacy_using_pio(dev))
   err = b43legacy_pio_init(dev);
  else {
   err = b43legacy_dma_init(dev);
   if (!err)
    b43legacy_qos_init(dev);
  }
 } while (err == -EAGAIN);
 if (err)
  goto err_chip_exit;

 b43legacy_set_synth_pu_delay(dev, 1);

 ssb_bus_powerup(bus, 1);
 b43legacy_upload_card_macaddress(dev);
 b43legacy_security_init(dev);
 b43legacy_rng_init(wl);

 ieee80211_wake_queues(dev->wl->hw);
 b43legacy_set_status(dev, B43legacy_STAT_INITIALIZED);

 b43legacy_leds_init(dev);
out:
 return err;

err_chip_exit:
 b43legacy_chip_exit(dev);
err_kfree_tssitbl:
 if (phy->dyn_tssi_tbl)
  kfree(phy->tssi2dbm);
err_kfree_lo_control:
 kfree(phy->lo_control);
 phy->lo_control = ((void*)0);
 ssb_bus_may_powerdown(bus);
 B43legacy_WARN_ON(b43legacy_status(dev) != B43legacy_STAT_UNINIT);
 return err;
}
