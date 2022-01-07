
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_spi_device {int device_id; } ;
struct efx_nic {int net_dev; } ;
typedef int status ;


 int DIV_ROUND_UP (int ,int) ;
 int ETIMEDOUT ;
 int HZ ;
 int SPI_RDSR ;
 int SPI_STATUS_NRDY ;
 int falcon_spi_cmd (struct efx_nic*,struct efx_spi_device const*,int ,int,int *,int*,int) ;
 int hw ;
 int jiffies ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

int
falcon_spi_wait_write(struct efx_nic *efx, const struct efx_spi_device *spi)
{
 unsigned long timeout = jiffies + 1 + DIV_ROUND_UP(HZ, 100);
 u8 status;
 int rc;

 for (;;) {
  rc = falcon_spi_cmd(efx, spi, SPI_RDSR, -1, ((void*)0),
        &status, sizeof(status));
  if (rc)
   return rc;
  if (!(status & SPI_STATUS_NRDY))
   return 0;
  if (time_after_eq(jiffies, timeout)) {
   netif_err(efx, hw, efx->net_dev,
      "SPI write timeout on device %d"
      " last status=0x%02x\n",
      spi->device_id, status);
   return -ETIMEDOUT;
  }
  schedule_timeout_uninterruptible(1);
 }
}
