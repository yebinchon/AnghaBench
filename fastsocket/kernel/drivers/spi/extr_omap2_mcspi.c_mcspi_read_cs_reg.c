
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_cs {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 mcspi_read_cs_reg(const struct spi_device *spi, int idx)
{
 struct omap2_mcspi_cs *cs = spi->controller_state;

 return __raw_readl(cs->base + idx);
}
