
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unituse ;
typedef int u64 ;
typedef int busbyte ;


 unsigned long MMCR0_PMC1CE ;
 unsigned long MMCR0_PMCjCE ;
 unsigned int MMCR1_PMC1_ADDER_SEL_SH ;
 unsigned int MMCR1_PMCSEL_SH (unsigned int) ;
 int MMCR1_TD_CP_DBG0SEL_SH ;
 unsigned long MMCR1_TTM0SEL_SH ;
 unsigned long MMCR1_TTM1SEL_SH ;
 int MMCR1_TTM3SEL_SH ;
 unsigned long MMCRA_SAMPLE_ENABLE ;
 int PM_BUSEVENT_MSK ;
 int PM_BYTE_MSK ;
 int PM_BYTE_SH ;
 size_t PM_FPU ;
 int PM_GRS ;
 int PM_GRS_MSK ;
 int PM_GRS_SH ;
 size_t PM_IFU ;
 size_t PM_ISU0 ;
 unsigned int PM_ISU0_ALT ;
 size_t PM_ISU1 ;
 unsigned int PM_LASTUNIT ;
 unsigned int PM_LSU1 ;
 int PM_PMCSEL_MSK ;
 int PM_PMC_MSK ;
 int PM_PMC_SH ;
 int PM_UNIT_MSK ;
 int PM_UNIT_SH ;
 unsigned long* grsel_shift ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ power5p_marked_instr_event (int) ;

__attribute__((used)) static int power5p_compute_mmcr(u64 event[], int n_ev,
    unsigned int hwc[], unsigned long mmcr[])
{
 unsigned long mmcr1 = 0;
 unsigned long mmcra = 0;
 unsigned int pmc, unit, byte, psel;
 unsigned int ttm;
 int i, isbus, bit, grsel;
 unsigned int pmc_inuse = 0;
 unsigned char busbyte[4];
 unsigned char unituse[16];
 int ttmuse;

 if (n_ev > 6)
  return -1;


 memset(busbyte, 0, sizeof(busbyte));
 memset(unituse, 0, sizeof(unituse));
 for (i = 0; i < n_ev; ++i) {
  pmc = (event[i] >> PM_PMC_SH) & PM_PMC_MSK;
  if (pmc) {
   if (pmc > 6)
    return -1;
   if (pmc_inuse & (1 << (pmc - 1)))
    return -1;
   pmc_inuse |= 1 << (pmc - 1);
  }
  if (event[i] & PM_BUSEVENT_MSK) {
   unit = (event[i] >> PM_UNIT_SH) & PM_UNIT_MSK;
   byte = (event[i] >> PM_BYTE_SH) & PM_BYTE_MSK;
   if (unit > PM_LASTUNIT)
    return -1;
   if (unit == PM_ISU0_ALT)
    unit = PM_ISU0;
   if (byte >= 4) {
    if (unit != PM_LSU1)
     return -1;
    ++unit;
    byte &= 3;
   }
   if (busbyte[byte] && busbyte[byte] != unit)
    return -1;
   busbyte[byte] = unit;
   unituse[unit] = 1;
  }
 }







 if (unituse[PM_ISU0] &
     (unituse[PM_FPU] | unituse[PM_IFU] | unituse[PM_ISU1])) {
  unituse[PM_ISU0_ALT] = 1;
  unituse[PM_ISU0] = 0;
 }

 ttmuse = 0;
 for (i = PM_FPU; i <= PM_ISU1; ++i) {
  if (!unituse[i])
   continue;
  if (ttmuse++)
   return -1;
  mmcr1 |= (unsigned long)i << MMCR1_TTM0SEL_SH;
 }
 ttmuse = 0;
 for (; i <= PM_GRS; ++i) {
  if (!unituse[i])
   continue;
  if (ttmuse++)
   return -1;
  mmcr1 |= (unsigned long)(i & 3) << MMCR1_TTM1SEL_SH;
 }
 if (ttmuse > 1)
  return -1;


 for (byte = 0; byte < 4; ++byte) {
  unit = busbyte[byte];
  if (!unit)
   continue;
  if (unit == PM_ISU0 && unituse[PM_ISU0_ALT]) {

   unit = PM_ISU0_ALT;
  } else if (unit == PM_LSU1 + 1) {

   mmcr1 |= 1ul << (MMCR1_TTM3SEL_SH + 3 - byte);
  }
  ttm = unit >> 2;
  mmcr1 |= (unsigned long)ttm
   << (MMCR1_TD_CP_DBG0SEL_SH - 2 * byte);
 }


 for (i = 0; i < n_ev; ++i) {
  pmc = (event[i] >> PM_PMC_SH) & PM_PMC_MSK;
  unit = (event[i] >> PM_UNIT_SH) & PM_UNIT_MSK;
  byte = (event[i] >> PM_BYTE_SH) & PM_BYTE_MSK;
  psel = event[i] & PM_PMCSEL_MSK;
  isbus = event[i] & PM_BUSEVENT_MSK;
  if (!pmc) {

   for (pmc = 0; pmc < 4; ++pmc) {
    if (!(pmc_inuse & (1 << pmc)))
     break;
   }
   if (pmc >= 4)
    return -1;
   pmc_inuse |= 1 << pmc;
  } else if (pmc <= 4) {

   --pmc;
   if (isbus && (byte & 2) &&
       (psel == 8 || psel == 0x10 || psel == 0x28))

    mmcr1 |= 1ul << (MMCR1_PMC1_ADDER_SEL_SH - pmc);
  } else {

   --pmc;
  }
  if (isbus && unit == PM_GRS) {
   bit = psel & 7;
   grsel = (event[i] >> PM_GRS_SH) & PM_GRS_MSK;
   mmcr1 |= (unsigned long)grsel << grsel_shift[bit];
  }
  if (power5p_marked_instr_event(event[i]))
   mmcra |= MMCRA_SAMPLE_ENABLE;
  if ((psel & 0x58) == 0x40 && (byte & 1) != ((pmc >> 1) & 1))

   psel |= 0x10;
  if (pmc <= 3)
   mmcr1 |= psel << MMCR1_PMCSEL_SH(pmc);
  hwc[i] = pmc;
 }


 mmcr[0] = 0;
 if (pmc_inuse & 1)
  mmcr[0] = MMCR0_PMC1CE;
 if (pmc_inuse & 0x3e)
  mmcr[0] |= MMCR0_PMCjCE;
 mmcr[1] = mmcr1;
 mmcr[2] = mmcra;
 return 0;
}
