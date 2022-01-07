
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int claimed; } ;


 int WARN_ON (int) ;
 int mmc_do_release_host (struct mmc_host*) ;
 int mmc_host_lazy_disable (struct mmc_host*) ;

void mmc_release_host(struct mmc_host *host)
{
 WARN_ON(!host->claimed);

 mmc_host_lazy_disable(host);

 mmc_do_release_host(host);
}
