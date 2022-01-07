
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_cs {int chconf0; } ;


 int OMAP2_MCSPI_CHCONF0 ;
 int mcspi_write_cs_reg (struct spi_device const*,int ,int ) ;

__attribute__((used)) static inline void mcspi_write_chconf0(const struct spi_device *spi, u32 val)
{
 struct omap2_mcspi_cs *cs = spi->controller_state;

 cs->chconf0 = val;
 mcspi_write_cs_reg(spi, OMAP2_MCSPI_CHCONF0, val);
}
