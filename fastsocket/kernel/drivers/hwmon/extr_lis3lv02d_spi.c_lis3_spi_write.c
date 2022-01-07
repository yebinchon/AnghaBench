
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct spi_device {int dummy; } ;
struct lis3lv02d {struct spi_device* bus_priv; } ;


 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int lis3_spi_write(struct lis3lv02d *lis3, int reg, u8 val)
{
 u8 tmp[2] = { reg, val };
 struct spi_device *spi = lis3->bus_priv;
 return spi_write(spi, tmp, sizeof(tmp));
}
