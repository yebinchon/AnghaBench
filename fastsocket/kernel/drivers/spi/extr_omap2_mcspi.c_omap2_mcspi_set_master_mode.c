
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_master {int bus_num; } ;
struct TYPE_2__ {int modulctrl; } ;


 int MOD_REG_BIT (int ,int ,int) ;
 int OMAP2_MCSPI_MODULCTRL ;
 int OMAP2_MCSPI_MODULCTRL_MS ;
 int OMAP2_MCSPI_MODULCTRL_SINGLE ;
 int OMAP2_MCSPI_MODULCTRL_STEST ;
 int mcspi_read_reg (struct spi_master*,int ) ;
 int mcspi_write_reg (struct spi_master*,int ,int ) ;
 TYPE_1__* omap2_mcspi_ctx ;

__attribute__((used)) static void omap2_mcspi_set_master_mode(struct spi_master *master)
{
 u32 l;




 l = mcspi_read_reg(master, OMAP2_MCSPI_MODULCTRL);
 MOD_REG_BIT(l, OMAP2_MCSPI_MODULCTRL_STEST, 0);
 MOD_REG_BIT(l, OMAP2_MCSPI_MODULCTRL_MS, 0);
 MOD_REG_BIT(l, OMAP2_MCSPI_MODULCTRL_SINGLE, 1);
 mcspi_write_reg(master, OMAP2_MCSPI_MODULCTRL, l);

 omap2_mcspi_ctx[master->bus_num - 1].modulctrl = l;
}
