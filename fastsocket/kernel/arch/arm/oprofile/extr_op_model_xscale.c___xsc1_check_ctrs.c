
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* int_mask; int int_enable; int* cnt_ovf; } ;
struct TYPE_3__ {int ovf; } ;


 int CCNT ;
 int PMN1 ;
 int PMU_ENABLE ;
 TYPE_2__* pmu ;
 int read_pmnc () ;
 TYPE_1__* results ;
 int write_pmnc (int) ;

__attribute__((used)) static void inline __xsc1_check_ctrs(void)
{
 int i;
 u32 pmnc = read_pmnc();
 write_pmnc(pmnc & ~PMU_ENABLE);

 for (i = CCNT; i <= PMN1; i++) {
  if (!(pmu->int_mask[i] & pmu->int_enable))
   continue;

  if (pmnc & pmu->cnt_ovf[i])
   results[i].ovf++;
 }
}
