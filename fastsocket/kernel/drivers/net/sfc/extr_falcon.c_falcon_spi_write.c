
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_spi_device {int dummy; } ;
struct efx_nic {int dummy; } ;
typedef size_t loff_t ;


 int EINTR ;
 int EIO ;
 int FALCON_SPI_MAX_LEN ;
 int SPI_READ ;
 unsigned int SPI_WREN ;
 int SPI_WRITE ;
 int cond_resched () ;
 int current ;
 unsigned int efx_spi_munge_command (struct efx_spi_device const*,int ,size_t) ;
 int falcon_spi_cmd (struct efx_nic*,struct efx_spi_device const*,unsigned int,size_t,int const*,int *,size_t) ;
 int falcon_spi_wait_write (struct efx_nic*,struct efx_spi_device const*) ;
 int falcon_spi_write_limit (struct efx_spi_device const*,size_t) ;
 scalar_t__ memcmp (int *,int const*,size_t) ;
 size_t min (size_t,int ) ;
 scalar_t__ signal_pending (int ) ;

int
falcon_spi_write(struct efx_nic *efx, const struct efx_spi_device *spi,
   loff_t start, size_t len, size_t *retlen, const u8 *buffer)
{
 u8 verify_buffer[FALCON_SPI_MAX_LEN];
 size_t block_len, pos = 0;
 unsigned int command;
 int rc = 0;

 while (pos < len) {
  rc = falcon_spi_cmd(efx, spi, SPI_WREN, -1, ((void*)0), ((void*)0), 0);
  if (rc)
   break;

  block_len = min(len - pos,
    falcon_spi_write_limit(spi, start + pos));
  command = efx_spi_munge_command(spi, SPI_WRITE, start + pos);
  rc = falcon_spi_cmd(efx, spi, command, start + pos,
        buffer + pos, ((void*)0), block_len);
  if (rc)
   break;

  rc = falcon_spi_wait_write(efx, spi);
  if (rc)
   break;

  command = efx_spi_munge_command(spi, SPI_READ, start + pos);
  rc = falcon_spi_cmd(efx, spi, command, start + pos,
        ((void*)0), verify_buffer, block_len);
  if (memcmp(verify_buffer, buffer + pos, block_len)) {
   rc = -EIO;
   break;
  }

  pos += block_len;


  cond_resched();
  if (signal_pending(current)) {
   rc = -EINTR;
   break;
  }
 }

 if (retlen)
  *retlen = pos;
 return rc;
}
