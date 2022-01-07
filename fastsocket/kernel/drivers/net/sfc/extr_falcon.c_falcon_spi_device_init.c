
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_spi_device {unsigned int device_id; int size; int addr_len; int munge_address; int erase_command; int erase_size; int block_size; } ;
struct efx_nic {int dummy; } ;


 int SPI_DEV_TYPE_ADDR_LEN ;
 int SPI_DEV_TYPE_BLOCK_SIZE ;
 int SPI_DEV_TYPE_ERASE_CMD ;
 int SPI_DEV_TYPE_ERASE_SIZE ;
 int SPI_DEV_TYPE_FIELD (scalar_t__,int ) ;
 int SPI_DEV_TYPE_SIZE ;

__attribute__((used)) static void falcon_spi_device_init(struct efx_nic *efx,
      struct efx_spi_device *spi_device,
      unsigned int device_id, u32 device_type)
{
 if (device_type != 0) {
  spi_device->device_id = device_id;
  spi_device->size =
   1 << SPI_DEV_TYPE_FIELD(device_type, SPI_DEV_TYPE_SIZE);
  spi_device->addr_len =
   SPI_DEV_TYPE_FIELD(device_type, SPI_DEV_TYPE_ADDR_LEN);
  spi_device->munge_address = (spi_device->size == 1 << 9 &&
          spi_device->addr_len == 1);
  spi_device->erase_command =
   SPI_DEV_TYPE_FIELD(device_type, SPI_DEV_TYPE_ERASE_CMD);
  spi_device->erase_size =
   1 << SPI_DEV_TYPE_FIELD(device_type,
      SPI_DEV_TYPE_ERASE_SIZE);
  spi_device->block_size =
   1 << SPI_DEV_TYPE_FIELD(device_type,
      SPI_DEV_TYPE_BLOCK_SIZE);
 } else {
  spi_device->size = 0;
 }
}
