
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int mmc_detect_change (struct mmc_host*,int ) ;
 int mmc_power_off (struct mmc_host*) ;

void mmc_start_host(struct mmc_host *host)
{
 mmc_power_off(host);
 mmc_detect_change(host, 0);
}
