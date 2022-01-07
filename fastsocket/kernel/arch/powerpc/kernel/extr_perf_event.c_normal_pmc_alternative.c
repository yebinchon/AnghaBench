
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* get_alternatives ) (int ,unsigned long,int *) ;} ;


 int MAX_EVENT_ALTERNATIVES ;
 unsigned long PPMU_LIMITED_PMC_OK ;
 unsigned long PPMU_LIMITED_PMC_REQD ;
 TYPE_1__* ppmu ;
 int stub1 (int ,unsigned long,int *) ;

__attribute__((used)) static u64 normal_pmc_alternative(u64 ev, unsigned long flags)
{
 u64 alt[MAX_EVENT_ALTERNATIVES];
 int n;

 flags &= ~(PPMU_LIMITED_PMC_OK | PPMU_LIMITED_PMC_REQD);
 n = ppmu->get_alternatives(ev, flags, alt);
 if (!n)
  return 0;
 return alt[0];
}
