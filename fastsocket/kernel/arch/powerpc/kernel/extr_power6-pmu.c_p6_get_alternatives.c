
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MAX_ALT ;
 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_MSKS ;
 int PM_PMC_SH ;
 unsigned int PPMU_LIMITED_PMC_OK ;
 unsigned int PPMU_LIMITED_PMC_REQD ;
 unsigned int PPMU_ONLY_COUNT_RUN ;
 int** event_alternatives ;
 int find_alternatives_list (int) ;
 int p6_limited_pmc_event (int) ;

__attribute__((used)) static int p6_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int i, j, nlim;
 unsigned int psel, pmc;
 unsigned int nalt = 1;
 u64 aevent;

 alt[0] = event;
 nlim = p6_limited_pmc_event(event);


 i = find_alternatives_list(event);
 if (i >= 0) {

  for (j = 0; j < MAX_ALT; ++j) {
   aevent = event_alternatives[i][j];
   if (!aevent)
    break;
   if (aevent != event)
    alt[nalt++] = aevent;
   nlim += p6_limited_pmc_event(aevent);
  }

 } else {


  psel = event & (PM_PMCSEL_MSK & ~1);
  pmc = (event >> PM_PMC_SH) & PM_PMC_MSK;
  if (pmc && (psel == 0x32 || psel == 0x34))
   alt[nalt++] = ((event ^ 0x6) & ~PM_PMC_MSKS) |
    ((5 - pmc) << PM_PMC_SH);


  if (pmc && (psel == 0x38 || psel == 0x3a))
   alt[nalt++] = ((event ^ 0x2) & ~PM_PMC_MSKS) |
    ((pmc > 2? pmc - 2: pmc + 2) << PM_PMC_SH);
 }

 if (flags & PPMU_ONLY_COUNT_RUN) {
  j = nalt;
  for (i = 0; i < nalt; ++i) {
   switch (alt[i]) {
   case 0x1e:
    alt[j++] = 0x600005;
    ++nlim;
    break;
   case 0x10000a:
    alt[j++] = 0x1e;
    break;
   case 2:
    alt[j++] = 0x500009;
    ++nlim;
    break;
   case 0x500009:
    alt[j++] = 2;
    break;
   case 0x10000e:
    alt[j++] = 0x4000f4;
    break;
   case 0x4000f4:
    alt[j++] = 0x10000e;
    break;
   }
  }
  nalt = j;
 }

 if (!(flags & PPMU_LIMITED_PMC_OK) && nlim) {

  j = 0;
  for (i = 0; i < nalt; ++i) {
   if (!p6_limited_pmc_event(alt[i])) {
    alt[j] = alt[i];
    ++j;
   }
  }
  nalt = j;
 } else if ((flags & PPMU_LIMITED_PMC_REQD) && nlim < nalt) {

  j = 0;
  for (i = 0; i < nalt; ++i) {
   if (p6_limited_pmc_event(alt[i])) {
    alt[j] = alt[i];
    ++j;
   }
  }
  nalt = j;
 }

 return nalt;
}
