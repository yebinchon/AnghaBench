
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usecount; } ;


 scalar_t__ omap2_fclks_active () ;
 scalar_t__ omap_dma_running () ;
 TYPE_1__* osc_ck ;

__attribute__((used)) static int omap2_can_sleep(void)
{
 if (omap2_fclks_active())
  return 0;
 if (osc_ck->usecount > 1)
  return 0;
 if (omap_dma_running())
  return 0;

 return 1;
}
