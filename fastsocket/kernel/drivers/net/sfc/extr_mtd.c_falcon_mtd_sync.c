
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct efx_mtd* priv; } ;
struct falcon_nic_data {int spi_lock; } ;
struct efx_nic {struct falcon_nic_data* nic_data; } ;
struct efx_mtd_partition {int dummy; } ;
struct efx_mtd {struct efx_nic* efx; } ;


 int efx_spi_slow_wait (struct efx_mtd_partition*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_mtd_partition* to_efx_mtd_partition (struct mtd_info*) ;

__attribute__((used)) static int falcon_mtd_sync(struct mtd_info *mtd)
{
 struct efx_mtd_partition *part = to_efx_mtd_partition(mtd);
 struct efx_mtd *efx_mtd = mtd->priv;
 struct efx_nic *efx = efx_mtd->efx;
 struct falcon_nic_data *nic_data = efx->nic_data;
 int rc;

 mutex_lock(&nic_data->spi_lock);
 rc = efx_spi_slow_wait(part, 1);
 mutex_unlock(&nic_data->spi_lock);
 return rc;
}
