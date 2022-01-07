
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct omap2_mcspi {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;
 struct omap2_mcspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static inline void mcspi_write_reg(struct spi_master *master,
  int idx, u32 val)
{
 struct omap2_mcspi *mcspi = spi_master_get_devdata(master);

 __raw_writel(val, mcspi->base + idx);
}
