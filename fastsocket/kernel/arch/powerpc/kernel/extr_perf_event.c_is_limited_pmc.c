
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PPMU_LIMITED_PMC5_6 ;
 TYPE_1__* ppmu ;

__attribute__((used)) static int is_limited_pmc(int pmcnum)
{
 return (ppmu->flags & PPMU_LIMITED_PMC5_6)
  && (pmcnum == 5 || pmcnum == 6);
}
