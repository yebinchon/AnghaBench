
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int dummy; } ;


 int MOD_REG_BIT (int ,int ,int) ;
 int OMAP2_MCSPI_CHCONF_FORCE ;
 int mcspi_cached_chconf0 (struct spi_device*) ;
 int mcspi_write_chconf0 (struct spi_device*,int ) ;

__attribute__((used)) static void omap2_mcspi_force_cs(struct spi_device *spi, int cs_active)
{
 u32 l;

 l = mcspi_cached_chconf0(spi);
 MOD_REG_BIT(l, OMAP2_MCSPI_CHCONF_FORCE, cs_active);
 mcspi_write_chconf0(spi, l);
}
