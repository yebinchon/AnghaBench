
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_omap_slot {int id; int mmc; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* get_cover_state ) (int ,int ) ;} ;


 int mmc_dev (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static inline
int mmc_omap_cover_is_open(struct mmc_omap_slot *slot)
{
 if (slot->pdata->get_cover_state)
  return slot->pdata->get_cover_state(mmc_dev(slot->mmc),
          slot->id);
 return 0;
}
