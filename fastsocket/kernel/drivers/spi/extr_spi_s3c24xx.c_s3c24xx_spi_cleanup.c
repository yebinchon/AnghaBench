
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int controller_state; } ;


 int kfree (int ) ;

__attribute__((used)) static void s3c24xx_spi_cleanup(struct spi_device *spi)
{
 kfree(spi->controller_state);
}
