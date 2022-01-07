
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int baud ;
struct TYPE_2__ {int bi_plb_busfreq; int bi_intfreq; int bi_procfreq; } ;


 unsigned long CPR0_READ (int ) ;
 int DCRN_CPR0_PLLC ;
 int DCRN_CPR0_PLLD ;
 int DCRN_CPR0_PRIMAD ;
 unsigned long PLLC_SRC_MASK ;
 unsigned long PLLD_FBDV_MASK ;
 unsigned long PLLD_FWDVA_MASK ;
 unsigned long PLLD_FWDVB_MASK ;
 unsigned long PRIMAD_EBCDV_MASK ;
 unsigned long PRIMAD_OPBDV_MASK ;
 unsigned long PRIMAD_PLBDV_MASK ;
 TYPE_1__ bd ;
 int dt_fixup_clock (char*,unsigned long) ;
 int dt_fixup_cpu_clocks (int ,int ,int ) ;
 int fatal (char*) ;
 void* find_node_by_alias (char*) ;
 int getprop (void*,char*,unsigned long*,int) ;
 int in_8 (unsigned char*) ;

__attribute__((used)) static void get_clocks(void)
{
 unsigned long sysclk, cpr_plld, cpr_pllc, cpr_primad, plloutb, i;
 unsigned long pllFwdDiv, pllFwdDivB, pllFbkDiv, pllPlbDiv, pllExtBusDiv;
 unsigned long pllOpbDiv, freqEBC, freqUART, freqOPB;
 unsigned long div;
 unsigned long umin;
 unsigned short diff;
 unsigned long udiv;
 unsigned short idiff;
 unsigned short ibdiv;
 unsigned long est;
 unsigned long baud;
 void *np;


 sysclk = (in_8((unsigned char *)0x80000000) == 0xc) ? 66666666 : 33333000;




 cpr_plld = CPR0_READ(DCRN_CPR0_PLLD);
 cpr_pllc = CPR0_READ(DCRN_CPR0_PLLC);




 pllFwdDiv = ((cpr_plld & PLLD_FWDVA_MASK) >> 16);




 pllFwdDivB = ((cpr_plld & PLLD_FWDVB_MASK) >> 8);
 if (pllFwdDivB == 0)
  pllFwdDivB = 8;




 pllFbkDiv = ((cpr_plld & PLLD_FBDV_MASK) >> 24);
 if (pllFbkDiv == 0)
  pllFbkDiv = 256;




 cpr_primad = CPR0_READ(DCRN_CPR0_PRIMAD);




 pllPlbDiv = ((cpr_primad & PRIMAD_PLBDV_MASK) >> 16);
 if (pllPlbDiv == 0)
  pllPlbDiv = 16;




 pllExtBusDiv = (cpr_primad & PRIMAD_EBCDV_MASK);
 if (pllExtBusDiv == 0)
  pllExtBusDiv = 16;




 pllOpbDiv = ((cpr_primad & PRIMAD_OPBDV_MASK) >> 8);
 if (pllOpbDiv == 0)
  pllOpbDiv = 16;





 freqOPB = (sysclk *pllFbkDiv) /pllOpbDiv;

 freqEBC = (sysclk * pllFbkDiv) / pllExtBusDiv;

 plloutb = ((sysclk * ((cpr_pllc & PLLC_SRC_MASK) ?
        pllFwdDivB : pllFwdDiv) *
      pllFbkDiv) / pllFwdDivB);

 np = find_node_by_alias("serial0");
 if (getprop(np, "current-speed", &baud, sizeof(baud)) != sizeof(baud))
  fatal("no current-speed property\n\r");

 udiv = 256;
 div = plloutb / (16 * baud);
 umin = (plloutb / freqOPB) << 1;
 diff = 256;





 for (i = 256; i > umin; i--) {
  ibdiv = div / i;
  est = i * ibdiv;
  idiff = (est > div) ? (est-div) : (div-est);
  if (idiff == 0) {
   udiv = i;
   break;
  } else if (idiff < diff) {
   udiv = i;
   diff = idiff;
  }
 }
 freqUART = plloutb / udiv;

 dt_fixup_cpu_clocks(bd.bi_procfreq, bd.bi_intfreq, bd.bi_plb_busfreq);
 dt_fixup_clock("/plb/ebc", freqEBC);
 dt_fixup_clock("/plb/opb", freqOPB);
 dt_fixup_clock("/plb/opb/serial@ef600300", freqUART);
 dt_fixup_clock("/plb/opb/serial@ef600400", freqUART);
}
