
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {int gpio_cd; int mmc; TYPE_1__* plat; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {unsigned int (* status ) (int ) ;} ;


 int ENOSYS ;
 unsigned int gpio_get_value (int ) ;
 int mmc_dev (int ) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 unsigned int stub1 (int ) ;

__attribute__((used)) static int mmci_get_cd(struct mmc_host *mmc)
{
 struct mmci_host *host = mmc_priv(mmc);
 unsigned int status;

 if (host->gpio_cd == -ENOSYS)
  status = host->plat->status(mmc_dev(host->mmc));
 else
  status = gpio_get_value(host->gpio_cd);

 return !status;
}
