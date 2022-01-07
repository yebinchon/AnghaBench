
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int clock; } ;
struct mmc_host {unsigned int f_min; unsigned int f_max; TYPE_1__ ios; } ;


 int WARN_ON (int) ;
 int mmc_set_ios (struct mmc_host*) ;

void mmc_set_clock(struct mmc_host *host, unsigned int hz)
{
 WARN_ON(hz < host->f_min);

 if (hz > host->f_max)
  hz = host->f_max;

 host->ios.clock = hz;
 mmc_set_ios(host);
}
