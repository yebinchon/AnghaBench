
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PM_PMC_MSK ;
 int PM_PMC_SH ;

__attribute__((used)) static int power5p_limited_pmc_event(u64 event)
{
 int pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;

 return pmc == 5 || pmc == 6;
}
