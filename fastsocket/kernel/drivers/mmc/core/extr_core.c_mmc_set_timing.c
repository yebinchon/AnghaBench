
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int timing; } ;
struct mmc_host {TYPE_1__ ios; } ;


 int mmc_set_ios (struct mmc_host*) ;

void mmc_set_timing(struct mmc_host *host, unsigned int timing)
{
 host->ios.timing = timing;
 mmc_set_ios(host);
}
