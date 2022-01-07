
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int address; } ;
struct TYPE_3__ {int address; int enabled; } ;


 int BP_IABR ;
 int BP_IABR_TE ;
 int CPU_FTR_IABR ;
 int SPRN_IABR ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_2__ dabr ;
 TYPE_1__* iabr ;
 int mtspr (int ,int) ;
 int set_dabr (int) ;

__attribute__((used)) static void insert_cpu_bpts(void)
{
 if (dabr.enabled)
  set_dabr(dabr.address | (dabr.enabled & 7));
 if (iabr && cpu_has_feature(CPU_FTR_IABR))
  mtspr(SPRN_IABR, iabr->address
    | (iabr->enabled & (BP_IABR|BP_IABR_TE)));
}
