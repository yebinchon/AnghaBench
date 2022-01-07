
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kvm_pmc {int dummy; } ;
struct TYPE_2__ {int event_type; } ;


 int PERF_TYPE_HARDWARE ;
 TYPE_1__* arch_events ;
 size_t* fixed_pmc_events ;
 int pmc_enabled (struct kvm_pmc*) ;
 int reprogram_counter (struct kvm_pmc*,int ,int ,int,int,int) ;
 int stop_counter (struct kvm_pmc*) ;

__attribute__((used)) static void reprogram_fixed_counter(struct kvm_pmc *pmc, u8 en_pmi, int idx)
{
 unsigned en = en_pmi & 0x3;
 bool pmi = en_pmi & 0x8;

 stop_counter(pmc);

 if (!en || !pmc_enabled(pmc))
  return;

 reprogram_counter(pmc, PERF_TYPE_HARDWARE,
   arch_events[fixed_pmc_events[idx]].event_type,
   !(en & 0x2),
   !(en & 0x1),
   pmi);
}
