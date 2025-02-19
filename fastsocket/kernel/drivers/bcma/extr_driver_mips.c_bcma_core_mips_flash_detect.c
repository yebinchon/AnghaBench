
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bcma_pflash {int present; int buswidth; scalar_t__ window_size; scalar_t__ window; } ;
struct bcma_drv_mips {TYPE_1__* core; } ;
struct bcma_drv_cc {int capabilities; TYPE_4__* core; struct bcma_pflash pflash; } ;
struct TYPE_9__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_3__ chipinfo; struct bcma_drv_cc drv_cc; } ;
struct TYPE_12__ {int width; } ;
struct TYPE_11__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_8__ {int rev; } ;
struct TYPE_10__ {TYPE_2__ id; } ;
struct TYPE_7__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_FLASHT ;
 int BCMA_CC_CAP_NFLASH ;



 int BCMA_CC_FLASH_CFG ;
 int BCMA_CC_FLASH_CFG_DS ;
 scalar_t__ BCMA_CHIP_ID_BCM4706 ;
 scalar_t__ BCMA_SOC_FLASH2 ;
 scalar_t__ BCMA_SOC_FLASH2_SZ ;
 int bcma_debug (struct bcma_bus*,char*) ;
 int bcma_err (struct bcma_bus*,char*) ;
 int bcma_nflash_init (struct bcma_drv_cc*) ;
 TYPE_6__ bcma_pflash_data ;
 TYPE_5__ bcma_pflash_resource ;
 int bcma_read32 (TYPE_4__*,int ) ;
 int bcma_sflash_init (struct bcma_drv_cc*) ;

__attribute__((used)) static void bcma_core_mips_flash_detect(struct bcma_drv_mips *mcore)
{
 struct bcma_bus *bus = mcore->core->bus;
 struct bcma_drv_cc *cc = &bus->drv_cc;
 struct bcma_pflash *pflash = &cc->pflash;

 switch (cc->capabilities & BCMA_CC_CAP_FLASHT) {
 case 128:
 case 130:
  bcma_debug(bus, "Found serial flash\n");
  bcma_sflash_init(cc);
  break;
 case 129:
  bcma_debug(bus, "Found parallel flash\n");
  pflash->present = 1;
  pflash->window = BCMA_SOC_FLASH2;
  pflash->window_size = BCMA_SOC_FLASH2_SZ;

  if ((bcma_read32(cc->core, BCMA_CC_FLASH_CFG) &
       BCMA_CC_FLASH_CFG_DS) == 0)
   pflash->buswidth = 1;
  else
   pflash->buswidth = 2;

  bcma_pflash_data.width = pflash->buswidth;
  bcma_pflash_resource.start = pflash->window;
  bcma_pflash_resource.end = pflash->window + pflash->window_size;

  break;
 default:
  bcma_err(bus, "Flash type not supported\n");
 }

 if (cc->core->id.rev == 38 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM4706) {
  if (cc->capabilities & BCMA_CC_CAP_NFLASH) {
   bcma_debug(bus, "Found NAND flash\n");
   bcma_nflash_init(cc);
  }
 }
}
