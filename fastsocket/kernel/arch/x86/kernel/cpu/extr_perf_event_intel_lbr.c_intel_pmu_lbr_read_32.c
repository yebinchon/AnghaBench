
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int nr; } ;
struct cpu_hw_events {TYPE_2__ lbr_stack; TYPE_1__* lbr_entries; } ;
struct TYPE_6__ {int lbr_nr; scalar_t__ lbr_from; } ;
struct TYPE_4__ {scalar_t__ reserved; scalar_t__ predicted; scalar_t__ mispred; int to; int from; } ;


 int intel_pmu_lbr_tos () ;
 int rdmsrl (scalar_t__,int) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static void intel_pmu_lbr_read_32(struct cpu_hw_events *cpuc)
{
 unsigned long mask = x86_pmu.lbr_nr - 1;
 u64 tos = intel_pmu_lbr_tos();
 int i;

 for (i = 0; i < x86_pmu.lbr_nr; i++) {
  unsigned long lbr_idx = (tos - i) & mask;
  union {
   struct {
    u32 from;
    u32 to;
   };
   u64 lbr;
  } msr_lastbranch;

  rdmsrl(x86_pmu.lbr_from + lbr_idx, msr_lastbranch.lbr);

  cpuc->lbr_entries[i].from = msr_lastbranch.from;
  cpuc->lbr_entries[i].to = msr_lastbranch.to;
  cpuc->lbr_entries[i].mispred = 0;
  cpuc->lbr_entries[i].predicted = 0;
  cpuc->lbr_entries[i].reserved = 0;
 }
 cpuc->lbr_stack.nr = i;
}
