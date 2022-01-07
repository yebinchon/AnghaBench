
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_spi_device {size_t block_size; } ;


 int FALCON_SPI_MAX_LEN ;
 size_t min (int ,size_t) ;

__attribute__((used)) static size_t
falcon_spi_write_limit(const struct efx_spi_device *spi, size_t start)
{
 return min(FALCON_SPI_MAX_LEN,
     (spi->block_size - (start & (spi->block_size - 1))));
}
