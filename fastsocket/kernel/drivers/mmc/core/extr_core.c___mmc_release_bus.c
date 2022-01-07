
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int bus_refs; int * bus_ops; int bus_dead; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void __mmc_release_bus(struct mmc_host *host)
{
 BUG_ON(!host);
 BUG_ON(host->bus_refs);
 BUG_ON(!host->bus_dead);

 host->bus_ops = ((void*)0);
}
