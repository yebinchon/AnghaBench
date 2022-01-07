
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct s3c2410_spigpio {int dummy; } ;


 struct s3c2410_spigpio* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline struct s3c2410_spigpio *spidev_to_sg(struct spi_device *spi)
{
 return spi_master_get_devdata(spi->master);
}
