
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int DIV_ROUND_UP (int ,int) ;
 int ETIMEDOUT ;
 int HZ ;
 int falcon_spi_poll (struct efx_nic*) ;
 int hw ;
 int jiffies ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after_eq (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int falcon_spi_wait(struct efx_nic *efx)
{




 unsigned long timeout = jiffies + 1 + DIV_ROUND_UP(HZ, 10);
 int i;

 for (i = 0; i < 10; i++) {
  if (!falcon_spi_poll(efx))
   return 0;
  udelay(10);
 }

 for (;;) {
  if (!falcon_spi_poll(efx))
   return 0;
  if (time_after_eq(jiffies, timeout)) {
   netif_err(efx, hw, efx->net_dev,
      "timed out waiting for SPI\n");
   return -ETIMEDOUT;
  }
  schedule_timeout_uninterruptible(1);
 }
}
