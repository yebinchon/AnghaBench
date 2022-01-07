
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int core; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct bcma_bus {int sprom; TYPE_2__ drv_cc; TYPE_1__ chipinfo; } ;


 int BCMA_CC_SPROM ;
 scalar_t__ BCMA_CHIP_ID_BCM4331 ;
 scalar_t__ BCMA_CHIP_ID_BCM43431 ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int SSB_SPROMSIZE_WORDS_R4 ;
 int bcma_chipco_bcm4331_ext_pa_lines_ctl (TYPE_2__*,int) ;
 int bcma_debug (struct bcma_bus*,char*,int ) ;
 int bcma_fill_sprom_with_fallback (struct bcma_bus*,int *) ;
 int bcma_sprom_ext_available (struct bcma_bus*) ;
 int bcma_sprom_extract_r8 (struct bcma_bus*,int *) ;
 int bcma_sprom_onchip_available (struct bcma_bus*) ;
 int bcma_sprom_onchip_offset (struct bcma_bus*) ;
 int bcma_sprom_read (struct bcma_bus*,int ,int *) ;
 int bcma_sprom_valid (int *) ;
 int bcma_warn (struct bcma_bus*,char*) ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;

int bcma_sprom_get(struct bcma_bus *bus)
{
 u16 offset = BCMA_CC_SPROM;
 u16 *sprom;
 int err = 0;

 if (!bus->drv_cc.core)
  return -EOPNOTSUPP;

 if (!bcma_sprom_ext_available(bus)) {
  bool sprom_onchip;






  sprom_onchip = bcma_sprom_onchip_available(bus);
  if (sprom_onchip) {

   offset = bcma_sprom_onchip_offset(bus);
  }
  if (!offset || !sprom_onchip) {





   err = bcma_fill_sprom_with_fallback(bus, &bus->sprom);
   return err;
  }
 }

 sprom = kcalloc(SSB_SPROMSIZE_WORDS_R4, sizeof(u16),
   GFP_KERNEL);
 if (!sprom)
  return -ENOMEM;

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
  bcma_chipco_bcm4331_ext_pa_lines_ctl(&bus->drv_cc, 0);

 bcma_debug(bus, "SPROM offset 0x%x\n", offset);
 bcma_sprom_read(bus, offset, sprom);

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
  bcma_chipco_bcm4331_ext_pa_lines_ctl(&bus->drv_cc, 1);

 err = bcma_sprom_valid(sprom);
 if (err) {
  bcma_warn(bus, "invalid sprom read from the PCIe card, try to use fallback sprom\n");
  err = bcma_fill_sprom_with_fallback(bus, &bus->sprom);
  goto out;
 }

 bcma_sprom_extract_r8(bus, sprom);

out:
 kfree(sprom);
 return err;
}
