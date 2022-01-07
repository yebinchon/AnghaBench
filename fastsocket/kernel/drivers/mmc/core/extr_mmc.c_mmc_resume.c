
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int card; int ocr; } ;


 int BUG_ON (int) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_init_card (struct mmc_host*,int ,int ) ;
 int mmc_release_host (struct mmc_host*) ;

__attribute__((used)) static int mmc_resume(struct mmc_host *host)
{
 int err;

 BUG_ON(!host);
 BUG_ON(!host->card);

 mmc_claim_host(host);
 err = mmc_init_card(host, host->ocr, host->card);
 mmc_release_host(host);

 return err;
}
