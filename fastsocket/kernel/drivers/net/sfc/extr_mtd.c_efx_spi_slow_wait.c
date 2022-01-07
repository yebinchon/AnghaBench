
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct efx_spi_device {int dummy; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {struct efx_mtd* priv; } ;
struct efx_mtd_partition {int name; TYPE_1__ mtd; } ;
struct efx_mtd {int name; struct efx_nic* efx; struct efx_spi_device* spi; } ;
typedef int status ;


 int EINTR ;
 int ETIMEDOUT ;
 int HZ ;
 int SPI_RDSR ;
 int SPI_STATUS_NRDY ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int falcon_spi_cmd (struct efx_nic*,struct efx_spi_device const*,int ,int,int *,int*,int) ;
 int pr_err (char*,int ,int ) ;
 int schedule_timeout (int) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int
efx_spi_slow_wait(struct efx_mtd_partition *part, bool uninterruptible)
{
 struct efx_mtd *efx_mtd = part->mtd.priv;
 const struct efx_spi_device *spi = efx_mtd->spi;
 struct efx_nic *efx = efx_mtd->efx;
 u8 status;
 int rc, i;


 for (i = 0; i < 40; i++) {
  __set_current_state(uninterruptible ?
        TASK_UNINTERRUPTIBLE : TASK_INTERRUPTIBLE);
  schedule_timeout(HZ / 10);
  rc = falcon_spi_cmd(efx, spi, SPI_RDSR, -1, ((void*)0),
        &status, sizeof(status));
  if (rc)
   return rc;
  if (!(status & SPI_STATUS_NRDY))
   return 0;
  if (signal_pending(current))
   return -EINTR;
 }
 pr_err("%s: timed out waiting for %s\n", part->name, efx_mtd->name);
 return -ETIMEDOUT;
}
