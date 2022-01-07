
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_spi_device {scalar_t__ size; int erase_size; } ;
struct falcon_nic_data {struct efx_spi_device spi_eeprom; struct efx_spi_device spi_flash; } ;
struct efx_nic {struct falcon_nic_data* nic_data; } ;
struct efx_mtd {char* name; int n_parts; TYPE_2__* part; int * ops; struct efx_spi_device* spi; } ;
struct TYPE_3__ {int erasesize; scalar_t__ size; int flags; int type; } ;
struct TYPE_4__ {char* type_name; scalar_t__ offset; TYPE_1__ mtd; } ;


 int ASSERT_RTNL () ;
 int EFX_EEPROM_BOOTCONFIG_END ;
 scalar_t__ EFX_EEPROM_BOOTCONFIG_START ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ FALCON_FLASH_BOOTCODE_START ;
 int GFP_KERNEL ;
 int MTD_CAP_NORFLASH ;
 int MTD_CAP_RAM ;
 int MTD_NORFLASH ;
 int MTD_RAM ;
 int efx_mtd_probe_device (struct efx_nic*,struct efx_mtd*) ;
 scalar_t__ efx_spi_present (struct efx_spi_device*) ;
 int falcon_mtd_ops ;
 int kfree (struct efx_mtd*) ;
 struct efx_mtd* kzalloc (int,int ) ;
 scalar_t__ min (scalar_t__,int ) ;

__attribute__((used)) static int falcon_mtd_probe(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 struct efx_spi_device *spi;
 struct efx_mtd *efx_mtd;
 int rc = -ENODEV;

 ASSERT_RTNL();

 spi = &nic_data->spi_flash;
 if (efx_spi_present(spi) && spi->size > FALCON_FLASH_BOOTCODE_START) {
  efx_mtd = kzalloc(sizeof(*efx_mtd) + sizeof(efx_mtd->part[0]),
      GFP_KERNEL);
  if (!efx_mtd)
   return -ENOMEM;

  efx_mtd->spi = spi;
  efx_mtd->name = "flash";
  efx_mtd->ops = &falcon_mtd_ops;

  efx_mtd->n_parts = 1;
  efx_mtd->part[0].mtd.type = MTD_NORFLASH;
  efx_mtd->part[0].mtd.flags = MTD_CAP_NORFLASH;
  efx_mtd->part[0].mtd.size = spi->size - FALCON_FLASH_BOOTCODE_START;
  efx_mtd->part[0].mtd.erasesize = spi->erase_size;
  efx_mtd->part[0].offset = FALCON_FLASH_BOOTCODE_START;
  efx_mtd->part[0].type_name = "sfc_flash_bootrom";

  rc = efx_mtd_probe_device(efx, efx_mtd);
  if (rc) {
   kfree(efx_mtd);
   return rc;
  }
 }

 spi = &nic_data->spi_eeprom;
 if (efx_spi_present(spi) && spi->size > EFX_EEPROM_BOOTCONFIG_START) {
  efx_mtd = kzalloc(sizeof(*efx_mtd) + sizeof(efx_mtd->part[0]),
      GFP_KERNEL);
  if (!efx_mtd)
   return -ENOMEM;

  efx_mtd->spi = spi;
  efx_mtd->name = "EEPROM";
  efx_mtd->ops = &falcon_mtd_ops;

  efx_mtd->n_parts = 1;
  efx_mtd->part[0].mtd.type = MTD_RAM;
  efx_mtd->part[0].mtd.flags = MTD_CAP_RAM;
  efx_mtd->part[0].mtd.size =
   min(spi->size, EFX_EEPROM_BOOTCONFIG_END) -
   EFX_EEPROM_BOOTCONFIG_START;
  efx_mtd->part[0].mtd.erasesize = spi->erase_size;
  efx_mtd->part[0].offset = EFX_EEPROM_BOOTCONFIG_START;
  efx_mtd->part[0].type_name = "sfc_bootconfig";

  rc = efx_mtd_probe_device(efx, efx_mtd);
  if (rc) {
   kfree(efx_mtd);
   return rc;
  }
 }

 return rc;
}
