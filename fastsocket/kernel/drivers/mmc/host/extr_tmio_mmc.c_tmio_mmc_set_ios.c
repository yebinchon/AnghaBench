
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct mmc_ios {int power_mode; int bus_width; int clock; } ;
struct mmc_host {int dummy; } ;


 int CNF_PWR_CTL_2 ;
 int CTL_SD_MEM_CARD_OPT ;





 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int sd_config_write8 (struct tmio_mmc_host*,int ,int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int tmio_mmc_clk_start (struct tmio_mmc_host*) ;
 int tmio_mmc_clk_stop (struct tmio_mmc_host*) ;
 int tmio_mmc_set_clock (struct tmio_mmc_host*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void tmio_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);

 if (ios->clock)
  tmio_mmc_set_clock(host, ios->clock);


 switch (ios->power_mode) {
 case 130:
  sd_config_write8(host, CNF_PWR_CTL_2, 0x00);
  tmio_mmc_clk_stop(host);
  break;
 case 129:

  sd_config_write8(host, CNF_PWR_CTL_2, 0x02);
  break;
 case 128:
  tmio_mmc_clk_start(host);
  break;
 }

 switch (ios->bus_width) {
 case 132:
  sd_ctrl_write16(host, CTL_SD_MEM_CARD_OPT, 0x80e0);
 break;
 case 131:
  sd_ctrl_write16(host, CTL_SD_MEM_CARD_OPT, 0x00e0);
 break;
 }


 udelay(140);
}
