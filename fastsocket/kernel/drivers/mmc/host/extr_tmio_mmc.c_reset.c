
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int CTL_RESET_SD ;
 int CTL_RESET_SDIO ;
 int msleep (int) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;

__attribute__((used)) static void reset(struct tmio_mmc_host *host)
{

 sd_ctrl_write16(host, CTL_RESET_SD, 0x0000);
 sd_ctrl_write16(host, CTL_RESET_SDIO, 0x0000);
 msleep(10);
 sd_ctrl_write16(host, CTL_RESET_SD, 0x0001);
 sd_ctrl_write16(host, CTL_RESET_SDIO, 0x0001);
 msleep(10);
}
