
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct at91mci_host {TYPE_1__* board; } ;
struct TYPE_2__ {scalar_t__ wp_pin; } ;


 int ENOSYS ;
 int gpio_get_value (scalar_t__) ;
 struct at91mci_host* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int at91_mci_get_ro(struct mmc_host *mmc)
{
 struct at91mci_host *host = mmc_priv(mmc);

 if (host->board->wp_pin)
  return !!gpio_get_value(host->board->wp_pin);




 return -ENOSYS;
}
