
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int N_COUNTER ;
 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_SH ;

__attribute__((used)) static int mpc7450_classify_event(u32 event)
{
 int pmc;

 pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
 if (pmc) {
  if (pmc > N_COUNTER)
   return -1;
  return 4;
 }
 event &= PM_PMCSEL_MSK;
 if (event <= 1)
  return 0;
 if (event <= 7)
  return 1;
 if (event <= 13)
  return 2;
 if (event <= 22)
  return 3;
 return -1;
}
