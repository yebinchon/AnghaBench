
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2_mcspi {int fck; int ick; } ;


 int clk_disable (int ) ;

__attribute__((used)) static void omap2_mcspi_disable_clocks(struct omap2_mcspi *mcspi)
{
 clk_disable(mcspi->ick);
 clk_disable(mcspi->fck);
}
