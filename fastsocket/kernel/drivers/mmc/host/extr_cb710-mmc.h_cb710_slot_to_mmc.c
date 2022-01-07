
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct cb710_slot {TYPE_1__ pdev; } ;


 struct mmc_host* dev_get_drvdata (int *) ;

__attribute__((used)) static inline struct mmc_host *cb710_slot_to_mmc(struct cb710_slot *slot)
{
 return dev_get_drvdata(&slot->pdev.dev);
}
