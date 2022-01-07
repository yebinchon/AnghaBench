
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int card; } ;


 int BUG_ON (int) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_remove (struct mmc_host*) ;
 int mmc_send_status (int ,int *) ;

__attribute__((used)) static void mmc_detect(struct mmc_host *host)
{
 int err;

 BUG_ON(!host);
 BUG_ON(!host->card);

 mmc_claim_host(host);




 err = mmc_send_status(host->card, ((void*)0));

 mmc_release_host(host);

 if (err) {
  mmc_remove(host);

  mmc_claim_host(host);
  mmc_detach_bus(host);
  mmc_release_host(host);
 }
}
