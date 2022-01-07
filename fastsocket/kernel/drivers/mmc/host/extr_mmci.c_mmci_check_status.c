
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {unsigned int oldstat; int timer; int mmc; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mmc_detect_change (int ,int ) ;
 unsigned int mmci_get_cd (int ) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void mmci_check_status(unsigned long data)
{
 struct mmci_host *host = (struct mmci_host *)data;
 unsigned int status = mmci_get_cd(host->mmc);

 if (status ^ host->oldstat)
  mmc_detect_change(host->mmc, 0);

 host->oldstat = status;
 mod_timer(&host->timer, jiffies + HZ);
}
