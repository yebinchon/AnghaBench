
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int clock; int p; int n2; int r2; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int DRM_DEBUG_KMS (char*,int,int,int,int) ;
 int DRM_INFO (char*,int,int) ;
 TYPE_1__* wrpll_tmds_clock_table ;

__attribute__((used)) static void intel_ddi_calculate_wrpll(int clock, int *p, int *n2, int *r2)
{
 u32 i;

 for (i = 0; i < ARRAY_SIZE(wrpll_tmds_clock_table); i++)
  if (clock <= wrpll_tmds_clock_table[i].clock)
   break;

 if (i == ARRAY_SIZE(wrpll_tmds_clock_table))
  i--;

 *p = wrpll_tmds_clock_table[i].p;
 *n2 = wrpll_tmds_clock_table[i].n2;
 *r2 = wrpll_tmds_clock_table[i].r2;

 if (wrpll_tmds_clock_table[i].clock != clock)
  DRM_INFO("WRPLL: using settings for %dKHz on %dKHz mode\n",
    wrpll_tmds_clock_table[i].clock, clock);

 DRM_DEBUG_KMS("WRPLL: %dKHz refresh rate with p=%d, n2=%d r2=%d\n",
        clock, *p, *n2, *r2);
}
