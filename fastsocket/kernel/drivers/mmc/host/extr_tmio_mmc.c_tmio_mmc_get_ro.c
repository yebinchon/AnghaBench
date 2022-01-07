
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int CTL_STATUS ;
 int TMIO_STAT_WRPROTECT ;
 struct tmio_mmc_host* mmc_priv (struct mmc_host*) ;
 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static int tmio_mmc_get_ro(struct mmc_host *mmc)
{
 struct tmio_mmc_host *host = mmc_priv(mmc);

 return (sd_ctrl_read16(host, CTL_STATUS) & TMIO_STAT_WRPROTECT) ? 0 : 1;
}
