
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long CNST_FAB_MATCH_MASK ;
 unsigned long CNST_FAB_MATCH_VAL (int) ;
 unsigned long CNST_L1_QUAL_MASK ;
 unsigned long CNST_L1_QUAL_VAL (unsigned int) ;
 unsigned long CNST_NC_MASK ;
 unsigned long CNST_NC_VAL ;
 unsigned long CNST_PMC_MASK (unsigned int) ;
 unsigned long CNST_PMC_VAL (unsigned int) ;
 unsigned long CNST_SAMPLE_MASK ;
 unsigned long CNST_SAMPLE_VAL (int) ;
 unsigned long CNST_THRESH_MASK ;
 unsigned long CNST_THRESH_VAL (int) ;
 int EVENT_CACHE_SEL_MASK ;
 int EVENT_CACHE_SEL_SHIFT ;
 int EVENT_IS_L1 ;
 int EVENT_IS_MARKED ;
 int EVENT_PMC_MASK ;
 int EVENT_PMC_SHIFT ;
 int EVENT_SAMPLE_SHIFT ;
 int EVENT_THRESH_SHIFT ;
 int EVENT_THR_CMP_MASK ;
 int EVENT_THR_CMP_SHIFT ;
 int EVENT_THR_CTL_SHIFT ;
 int EVENT_UNIT_MASK ;
 int EVENT_UNIT_SHIFT ;
 scalar_t__ event_is_fab_match (int) ;

__attribute__((used)) static int power8_get_constraint(u64 event, unsigned long *maskp, unsigned long *valp)
{
 unsigned int unit, pmc, cache;
 unsigned long mask, value;

 mask = value = 0;

 pmc = (event >> EVENT_PMC_SHIFT) & EVENT_PMC_MASK;
 unit = (event >> EVENT_UNIT_SHIFT) & EVENT_UNIT_MASK;
 cache = (event >> EVENT_CACHE_SEL_SHIFT) & EVENT_CACHE_SEL_MASK;

 if (pmc) {
  if (pmc > 6)
   return -1;

  mask |= CNST_PMC_MASK(pmc);
  value |= CNST_PMC_VAL(pmc);

  if (pmc >= 5 && event != 0x500fa && event != 0x600f4)
   return -1;
 }

 if (pmc <= 4) {






  mask |= CNST_NC_MASK;
  value |= CNST_NC_VAL;
 }

 if (unit >= 6 && unit <= 9) {
  if (cache)
   return -1;

 } else if (event & EVENT_IS_L1) {
  mask |= CNST_L1_QUAL_MASK;
  value |= CNST_L1_QUAL_VAL(cache);
 }

 if (event & EVENT_IS_MARKED) {
  mask |= CNST_SAMPLE_MASK;
  value |= CNST_SAMPLE_VAL(event >> EVENT_SAMPLE_SHIFT);
 }





 if (event_is_fab_match(event)) {
  mask |= CNST_FAB_MATCH_MASK;
  value |= CNST_FAB_MATCH_VAL(event >> EVENT_THR_CTL_SHIFT);
 } else {




  unsigned int cmp, exp;

  cmp = (event >> EVENT_THR_CMP_SHIFT) & EVENT_THR_CMP_MASK;
  exp = cmp >> 7;

  if (exp && (cmp & 0x60) == 0)
   return -1;

  mask |= CNST_THRESH_MASK;
  value |= CNST_THRESH_VAL(event >> EVENT_THRESH_SHIFT);
 }

 *maskp = mask;
 *valp = value;

 return 0;
}
