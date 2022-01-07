
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int OPROFILE_MAX_PMC_NUM ;
 int OPROFILE_PMSEL_FIELD_WIDTH ;
 int OPROFILE_PM_PMCSEL_MSK ;
 int OPROFILE_PM_UNIT_MSK ;
 int OPROFILE_PM_UNIT_SHIFT ;

__attribute__((used)) static int power7_marked_instr_event(u64 mmcr1)
{
 u64 psel, unit;
 int pmc, cntr_marked_events = 0;





 for (pmc = 0; pmc < 4; pmc++) {
  psel = mmcr1 & (OPROFILE_PM_PMCSEL_MSK
    << (OPROFILE_MAX_PMC_NUM - pmc)
    * OPROFILE_PMSEL_FIELD_WIDTH);
  psel = (psel >> ((OPROFILE_MAX_PMC_NUM - pmc)
     * OPROFILE_PMSEL_FIELD_WIDTH)) & ~1ULL;
  unit = mmcr1 & (OPROFILE_PM_UNIT_MSK
    << (OPROFILE_PM_UNIT_SHIFT
        - (pmc * OPROFILE_PMSEL_FIELD_WIDTH)));
  unit = unit >> (OPROFILE_PM_UNIT_SHIFT
    - (pmc * OPROFILE_PMSEL_FIELD_WIDTH));

  switch (psel >> 4) {
  case 2:
   cntr_marked_events |= (pmc == 1 || pmc == 3) << pmc;
   break;
  case 3:
   if (psel == 0x3c) {
    cntr_marked_events |= (pmc == 0) << pmc;
    break;
   }

   if (psel == 0x3e) {
    cntr_marked_events |= (pmc != 1) << pmc;
    break;
   }

   cntr_marked_events |= 1 << pmc;
   break;
  case 4:
  case 5:
   cntr_marked_events |= (unit == 0xd) << pmc;
   break;
  case 6:
   if (psel == 0x64)
    cntr_marked_events |= (pmc >= 2) << pmc;
   break;
  case 8:
   cntr_marked_events |= (unit == 0xd) << pmc;
   break;
  }
 }
 return cntr_marked_events;
}
