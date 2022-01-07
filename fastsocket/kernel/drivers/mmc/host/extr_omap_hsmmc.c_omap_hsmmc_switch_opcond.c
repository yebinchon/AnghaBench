
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hsmmc_host {int mmc; int base; int dbclk; scalar_t__ got_dbclk; int fclk; int iclk; int slot_id; int dev; } ;
struct TYPE_2__ {int (* set_power ) (int ,int ,int,int) ;} ;


 int HCTL ;
 int MMC_VDD_23_24 ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SDVS18 ;
 int SDVS30 ;
 int SDVSCLR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 TYPE_1__ mmc_slot (struct omap_hsmmc_host*) ;
 int set_sd_bus_power (struct omap_hsmmc_host*) ;
 int stub1 (int ,int ,int,int) ;
 int stub2 (int ,int ,int,int) ;

__attribute__((used)) static int omap_hsmmc_switch_opcond(struct omap_hsmmc_host *host, int vdd)
{
 u32 reg_val = 0;
 int ret;


 clk_disable(host->fclk);
 clk_disable(host->iclk);
 if (host->got_dbclk)
  clk_disable(host->dbclk);


 ret = mmc_slot(host).set_power(host->dev, host->slot_id, 0, 0);


 if (!ret)
  ret = mmc_slot(host).set_power(host->dev, host->slot_id, 1,
            vdd);
 clk_enable(host->iclk);
 clk_enable(host->fclk);
 if (host->got_dbclk)
  clk_enable(host->dbclk);

 if (ret != 0)
  goto err;

 OMAP_HSMMC_WRITE(host->base, HCTL,
  OMAP_HSMMC_READ(host->base, HCTL) & SDVSCLR);
 reg_val = OMAP_HSMMC_READ(host->base, HCTL);
 if ((1 << vdd) <= MMC_VDD_23_24)
  reg_val |= SDVS18;
 else
  reg_val |= SDVS30;

 OMAP_HSMMC_WRITE(host->base, HCTL, reg_val);
 set_sd_bus_power(host);

 return 0;
err:
 dev_dbg(mmc_dev(host->mmc), "Unable to switch operating voltage\n");
 return ret;
}
