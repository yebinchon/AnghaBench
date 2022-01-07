
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int dummy; } ;


 int mmc_omap_fclk_enable (struct mmc_omap_host*,int ) ;

__attribute__((used)) static void
mmc_omap_clk_timer(unsigned long data)
{
 struct mmc_omap_host *host = (struct mmc_omap_host *) data;

 mmc_omap_fclk_enable(host, 0);
}
