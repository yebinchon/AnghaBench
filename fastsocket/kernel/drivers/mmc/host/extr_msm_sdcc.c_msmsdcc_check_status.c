
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ function; } ;
struct msmsdcc_host {int eject; unsigned int oldstat; TYPE_2__ timer; int mmc; TYPE_1__* plat; } ;
struct TYPE_3__ {unsigned int (* status ) (int ) ;} ;


 int HZ ;
 scalar_t__ jiffies ;
 int mmc_detect_change (int ,int) ;
 int mmc_dev (int ) ;
 int mmc_hostname (int ) ;
 int mod_timer (TYPE_2__*,scalar_t__) ;
 int pr_info (char*,int ,unsigned int,unsigned int) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static void
msmsdcc_check_status(unsigned long data)
{
 struct msmsdcc_host *host = (struct msmsdcc_host *)data;
 unsigned int status;

 if (!host->plat->status) {
  mmc_detect_change(host->mmc, 0);
  goto out;
 }

 status = host->plat->status(mmc_dev(host->mmc));
 host->eject = !status;
 if (status ^ host->oldstat) {
  pr_info("%s: Slot status change detected (%d -> %d)\n",
   mmc_hostname(host->mmc), host->oldstat, status);
  if (status)
   mmc_detect_change(host->mmc, (5 * HZ) / 2);
  else
   mmc_detect_change(host->mmc, 0);
 }

 host->oldstat = status;

out:
 if (host->timer.function)
  mod_timer(&host->timer, jiffies + HZ);
}
