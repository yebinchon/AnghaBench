
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2_mcspi {int fck; int ick; } ;


 int ENODEV ;
 scalar_t__ clk_enable (int ) ;
 int omap2_mcspi_restore_ctx (struct omap2_mcspi*) ;

__attribute__((used)) static int omap2_mcspi_enable_clocks(struct omap2_mcspi *mcspi)
{
 if (clk_enable(mcspi->ick))
  return -ENODEV;
 if (clk_enable(mcspi->fck))
  return -ENODEV;

 omap2_mcspi_restore_ctx(mcspi);

 return 0;
}
