
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PM_PMC_MSK ;
 int PM_PMC_SH ;

__attribute__((used)) static int power7_get_constraint(u64 event, unsigned long *maskp,
     unsigned long *valp)
{
 int pmc, sh;
 unsigned long mask = 0, value = 0;

 pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
 if (pmc) {
  if (pmc > 6)
   return -1;
  sh = (pmc - 1) * 2;
  mask |= 2 << sh;
  value |= 1 << sh;
  if (pmc >= 5 && !(event == 0x500fa || event == 0x600f4))
   return -1;
 }
 if (pmc < 5) {

  mask |= 0x8000;
  value |= 0x1000;
 }
 *maskp = mask;
 *valp = value;
 return 0;
}
