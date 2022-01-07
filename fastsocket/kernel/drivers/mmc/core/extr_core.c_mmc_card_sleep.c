
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* bus_ops; int bus_dead; } ;
struct TYPE_2__ {int (* sleep ) (struct mmc_host*) ;scalar_t__ awake; } ;


 int ENOSYS ;
 int mmc_bus_get (struct mmc_host*) ;
 int mmc_bus_put (struct mmc_host*) ;
 int stub1 (struct mmc_host*) ;

int mmc_card_sleep(struct mmc_host *host)
{
 int err = -ENOSYS;

 mmc_bus_get(host);

 if (host->bus_ops && !host->bus_dead && host->bus_ops->awake)
  err = host->bus_ops->sleep(host);

 mmc_bus_put(host);

 return err;
}
