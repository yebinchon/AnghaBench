
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct efx_spi_device {size_t erase_size; scalar_t__ erase_command; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {struct efx_mtd* priv; } ;
struct efx_mtd_partition {TYPE_1__ mtd; } ;
struct efx_mtd {struct efx_nic* efx; struct efx_spi_device* spi; } ;
typedef unsigned int loff_t ;
typedef int empty ;
typedef int buffer ;


 int EFX_SPI_VERIFY_BUF_LEN ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ SPI_WREN ;
 int cond_resched () ;
 int current ;
 int efx_spi_slow_wait (struct efx_mtd_partition*,int) ;
 int efx_spi_unlock (struct efx_nic*,struct efx_spi_device const*) ;
 int falcon_spi_cmd (struct efx_nic*,struct efx_spi_device const*,scalar_t__,unsigned int,int *,int *,int ) ;
 int falcon_spi_read (struct efx_nic*,struct efx_spi_device const*,unsigned int,unsigned int,int *,int *) ;
 scalar_t__ memcmp (int *,int *,unsigned int) ;
 int memset (int *,int,int) ;
 unsigned int min (size_t,int) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int
efx_spi_erase(struct efx_mtd_partition *part, loff_t start, size_t len)
{
 struct efx_mtd *efx_mtd = part->mtd.priv;
 const struct efx_spi_device *spi = efx_mtd->spi;
 struct efx_nic *efx = efx_mtd->efx;
 unsigned pos, block_len;
 u8 empty[EFX_SPI_VERIFY_BUF_LEN];
 u8 buffer[EFX_SPI_VERIFY_BUF_LEN];
 int rc;

 if (len != spi->erase_size)
  return -EINVAL;

 if (spi->erase_command == 0)
  return -EOPNOTSUPP;

 rc = efx_spi_unlock(efx, spi);
 if (rc)
  return rc;
 rc = falcon_spi_cmd(efx, spi, SPI_WREN, -1, ((void*)0), ((void*)0), 0);
 if (rc)
  return rc;
 rc = falcon_spi_cmd(efx, spi, spi->erase_command, start, ((void*)0),
       ((void*)0), 0);
 if (rc)
  return rc;
 rc = efx_spi_slow_wait(part, 0);


 memset(empty, 0xff, sizeof(empty));
 for (pos = 0; pos < len; pos += block_len) {
  block_len = min(len - pos, sizeof(buffer));
  rc = falcon_spi_read(efx, spi, start + pos, block_len,
         ((void*)0), buffer);
  if (rc)
   return rc;
  if (memcmp(empty, buffer, block_len))
   return -EIO;


  cond_resched();
  if (signal_pending(current))
   return -EINTR;
 }

 return rc;
}
