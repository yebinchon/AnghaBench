
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int dummy; } ;


 int OMAP2_MCSPI_CHCTRL0 ;
 int OMAP2_MCSPI_CHCTRL_EN ;
 int mcspi_write_cs_reg (struct spi_device const*,int ,int ) ;

__attribute__((used)) static void omap2_mcspi_set_enable(const struct spi_device *spi, int enable)
{
 u32 l;

 l = enable ? OMAP2_MCSPI_CHCTRL_EN : 0;
 mcspi_write_cs_reg(spi, OMAP2_MCSPI_CHCTRL0, l);
}
