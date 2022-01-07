
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; } ;
struct mmc_bus_ops {int dummy; } ;


 int MMC_CAP_NONREMOVABLE ;
 int mmc_attach_bus (struct mmc_host*,struct mmc_bus_ops const*) ;
 struct mmc_bus_ops mmc_ops ;
 struct mmc_bus_ops mmc_ops_unsafe ;

__attribute__((used)) static void mmc_attach_bus_ops(struct mmc_host *host)
{
 const struct mmc_bus_ops *bus_ops;

 if (host->caps & MMC_CAP_NONREMOVABLE)
  bus_ops = &mmc_ops_unsafe;
 else
  bus_ops = &mmc_ops;
 mmc_attach_bus(host, bus_ops);
}
