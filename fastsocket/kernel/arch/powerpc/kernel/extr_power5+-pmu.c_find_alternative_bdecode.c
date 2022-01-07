
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_MSKS ;
 int PM_PMC_SH ;
 int** bytedecode_alternatives ;

__attribute__((used)) static s64 find_alternative_bdecode(u64 event)
{
 int pmc, altpmc, pp, j;

 pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
 if (pmc == 0 || pmc > 4)
  return -1;
 altpmc = 5 - pmc;
 pp = event & PM_PMCSEL_MSK;
 for (j = 0; j < 4; ++j) {
  if (bytedecode_alternatives[pmc - 1][j] == pp) {
   return (event & ~(PM_PMC_MSKS | PM_PMCSEL_MSK)) |
    (altpmc << PM_PMC_SH) |
    bytedecode_alternatives[altpmc - 1][j];
  }
 }


 if (pmc == 1 && (pp == 0x0d || pp == 0x0e))
  return event + (2 << PM_PMC_SH) + (0x2e - 0x0d);
 if (pmc == 3 && (pp == 0x2e || pp == 0x2f))
  return event - (2 << PM_PMC_SH) - (0x2e - 0x0d);


 if (pp == 0x10 || pp == 0x28)
  return ((event ^ (0x10 ^ 0x28)) & ~PM_PMC_MSKS) |
   (altpmc << PM_PMC_SH);

 return -1;
}
