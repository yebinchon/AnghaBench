
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxamci_host {TYPE_1__* pdata; TYPE_2__* mmc; int * vcc; } ;
struct TYPE_4__ {int ocr_avail; } ;
struct TYPE_3__ {int ocr_mask; } ;


 scalar_t__ IS_ERR (int *) ;
 int MMC_VDD_32_33 ;
 int MMC_VDD_33_34 ;
 int dev_warn (int ,char*) ;
 int mmc_dev (TYPE_2__*) ;
 int mmc_regulator_get_ocrmask (int *) ;
 int * regulator_get (int ,char*) ;

__attribute__((used)) static inline void pxamci_init_ocr(struct pxamci_host *host)
{
 if (host->vcc == ((void*)0)) {

  host->mmc->ocr_avail = host->pdata ?
   host->pdata->ocr_mask :
   MMC_VDD_32_33 | MMC_VDD_33_34;
 }
}
