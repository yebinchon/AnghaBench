
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {struct efx_mtd* priv; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {int updating; int nvram_type; } ;
struct efx_mtd_partition {TYPE_1__ mcdi; } ;
struct efx_mtd {struct efx_nic* efx; } ;


 int efx_mcdi_nvram_update_finish (struct efx_nic*,int ) ;
 struct efx_mtd_partition* to_efx_mtd_partition (struct mtd_info*) ;

__attribute__((used)) static int siena_mtd_sync(struct mtd_info *mtd)
{
 struct efx_mtd_partition *part = to_efx_mtd_partition(mtd);
 struct efx_mtd *efx_mtd = mtd->priv;
 struct efx_nic *efx = efx_mtd->efx;
 int rc = 0;

 if (part->mcdi.updating) {
  part->mcdi.updating = 0;
  rc = efx_mcdi_nvram_update_finish(efx, part->mcdi.nvram_type);
 }

 return rc;
}
