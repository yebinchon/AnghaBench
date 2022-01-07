
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int dummy; } ;


 int MOD_REG_BIT (int ,int ,int) ;
 int OMAP2_MCSPI_CHCONF_DMAR ;
 int OMAP2_MCSPI_CHCONF_DMAW ;
 int mcspi_cached_chconf0 (struct spi_device const*) ;
 int mcspi_write_chconf0 (struct spi_device const*,int ) ;

__attribute__((used)) static void omap2_mcspi_set_dma_req(const struct spi_device *spi,
  int is_read, int enable)
{
 u32 l, rw;

 l = mcspi_cached_chconf0(spi);

 if (is_read)
  rw = OMAP2_MCSPI_CHCONF_DMAR;
 else
  rw = OMAP2_MCSPI_CHCONF_DMAW;

 MOD_REG_BIT(l, rw, enable);
 mcspi_write_chconf0(spi, l);
}
