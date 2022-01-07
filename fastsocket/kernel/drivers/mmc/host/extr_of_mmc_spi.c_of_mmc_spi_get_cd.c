
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int CD_GPIO ;
 int of_mmc_spi_read_gpio (struct device*,int ) ;

__attribute__((used)) static int of_mmc_spi_get_cd(struct device *dev)
{
 return of_mmc_spi_read_gpio(dev, CD_GPIO);
}
