
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int * card; } ;


 int BUG_ON (int) ;
 int mmc_remove_card (int *) ;

__attribute__((used)) static void mmc_sd_remove(struct mmc_host *host)
{
 BUG_ON(!host);
 BUG_ON(!host->card);

 mmc_remove_card(host->card);
 host->card = ((void*)0);
}
