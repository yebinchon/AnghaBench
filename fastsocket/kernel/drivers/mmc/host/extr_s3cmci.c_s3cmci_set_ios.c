
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct s3cmci_host {int real_rate; int bus_width; scalar_t__ base; TYPE_1__* pdata; int is2440; } ;
struct mmc_ios {int power_mode; int clock; int bus_width; int vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* set_power ) (int,int ) ;} ;





 int S3C2410_GPE (int) ;
 int S3C2410_GPE10_SDDAT3 ;
 int S3C2410_GPE5_SDCLK ;
 int S3C2410_GPE6_SDCMD ;
 int S3C2410_GPE7_SDDAT0 ;
 int S3C2410_GPE8_SDDAT1 ;
 int S3C2410_GPE9_SDDAT2 ;
 scalar_t__ S3C2410_SDICON ;
 int S3C2410_SDICON_CLOCKTYPE ;
 int S3C2410_SDICON_FIFORESET ;
 int S3C2440_SDICON_SDRESET ;
 int dbg (struct s3cmci_host*,int ,char*,...) ;
 int dbg_conf ;
 int gpio_direction_output (int ,int ) ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int s3c2410_gpio_cfgpin (int ,int ) ;
 int s3cmci_set_clk (struct s3cmci_host*,struct mmc_ios*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3cmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct s3cmci_host *host = mmc_priv(mmc);
 u32 mci_con;



 mci_con = readl(host->base + S3C2410_SDICON);

 switch (ios->power_mode) {
 case 129:
 case 128:
  s3c2410_gpio_cfgpin(S3C2410_GPE(5), S3C2410_GPE5_SDCLK);
  s3c2410_gpio_cfgpin(S3C2410_GPE(6), S3C2410_GPE6_SDCMD);
  s3c2410_gpio_cfgpin(S3C2410_GPE(7), S3C2410_GPE7_SDDAT0);
  s3c2410_gpio_cfgpin(S3C2410_GPE(8), S3C2410_GPE8_SDDAT1);
  s3c2410_gpio_cfgpin(S3C2410_GPE(9), S3C2410_GPE9_SDDAT2);
  s3c2410_gpio_cfgpin(S3C2410_GPE(10), S3C2410_GPE10_SDDAT3);

  if (host->pdata->set_power)
   host->pdata->set_power(ios->power_mode, ios->vdd);

  if (!host->is2440)
   mci_con |= S3C2410_SDICON_FIFORESET;

  break;

 case 130:
 default:
  gpio_direction_output(S3C2410_GPE(5), 0);

  if (host->is2440)
   mci_con |= S3C2440_SDICON_SDRESET;

  if (host->pdata->set_power)
   host->pdata->set_power(ios->power_mode, ios->vdd);

  break;
 }

 s3cmci_set_clk(host, ios);


 if (ios->clock)
  mci_con |= S3C2410_SDICON_CLOCKTYPE;
 else
  mci_con &= ~S3C2410_SDICON_CLOCKTYPE;

 writel(mci_con, host->base + S3C2410_SDICON);

 if ((ios->power_mode == 129) ||
     (ios->power_mode == 128)) {
  dbg(host, dbg_conf, "running at %lukHz (requested: %ukHz).\n",
   host->real_rate/1000, ios->clock/1000);
 } else {
  dbg(host, dbg_conf, "powered down.\n");
 }

 host->bus_width = ios->bus_width;
}
