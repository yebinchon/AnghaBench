
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_slot {int cover_tasklet; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void mmc_omap_cover_timer(unsigned long arg)
{
 struct mmc_omap_slot *slot = (struct mmc_omap_slot *) arg;
 tasklet_schedule(&slot->cover_tasklet);
}
