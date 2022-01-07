
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int CTL_CLK_AND_WAIT_CTL ;
 int CTL_SD_CARD_CLK_CTL ;
 int msleep (int) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;

__attribute__((used)) static void tmio_mmc_clk_start(struct tmio_mmc_host *host)
{
 sd_ctrl_write16(host, CTL_SD_CARD_CLK_CTL, 0x0100 |
  sd_ctrl_read16(host, CTL_SD_CARD_CLK_CTL));
 msleep(10);
 sd_ctrl_write16(host, CTL_CLK_AND_WAIT_CTL, 0x0100);
 msleep(10);
}
