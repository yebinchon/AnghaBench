
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int max_clk; unsigned int clock; scalar_t__ ioaddr; int mmc; } ;


 int ESDHC_CLOCK_HCKEN ;
 int ESDHC_CLOCK_IPGEN ;
 int ESDHC_CLOCK_MASK ;
 int ESDHC_CLOCK_PEREN ;
 int ESDHC_DIVIDER_SHIFT ;
 int ESDHC_PREDIV_SHIFT ;
 scalar_t__ ESDHC_SYSTEM_CONTROL ;
 int clrbits32 (scalar_t__,int) ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int mdelay (int) ;
 int mmc_dev (int ) ;
 int setbits32 (scalar_t__,int) ;

__attribute__((used)) static void esdhc_set_clock(struct sdhci_host *host, unsigned int clock)
{
 int pre_div = 2;
 int div = 1;

 clrbits32(host->ioaddr + ESDHC_SYSTEM_CONTROL, ESDHC_CLOCK_IPGEN |
    ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN | ESDHC_CLOCK_MASK);

 if (clock == 0)
  goto out;

 while (host->max_clk / pre_div / 16 > clock && pre_div < 256)
  pre_div *= 2;

 while (host->max_clk / pre_div / div > clock && div < 16)
  div++;

 dev_dbg(mmc_dev(host->mmc), "desired SD clock: %d, actual: %d\n",
  clock, host->max_clk / pre_div / div);

 pre_div >>= 1;
 div--;

 setbits32(host->ioaddr + ESDHC_SYSTEM_CONTROL, ESDHC_CLOCK_IPGEN |
    ESDHC_CLOCK_HCKEN | ESDHC_CLOCK_PEREN |
    div << ESDHC_DIVIDER_SHIFT | pre_div << ESDHC_PREDIV_SHIFT);
 mdelay(100);
out:
 host->clock = clock;
}
