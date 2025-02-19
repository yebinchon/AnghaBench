
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCRN_CPC0_PLLMR0 ;
 int DCRN_CPC0_PLLMR1 ;
 int DCRN_CPC0_UCR ;
 int dt_fixup_clock (char*,int) ;
 int dt_fixup_cpu_clocks (int,int,int ) ;
 int mfdcr (int ) ;

void ibm405ep_fixup_clocks(unsigned int sys_clk)
{
 u32 pllmr0 = mfdcr(DCRN_CPC0_PLLMR0);
 u32 pllmr1 = mfdcr(DCRN_CPC0_PLLMR1);
 u32 cpc0_ucr = mfdcr(DCRN_CPC0_UCR);
 u32 cpu, plb, opb, ebc, uart0, uart1;
 u32 fwdva, fwdvb, fbdv, cbdv, opdv, epdv;
 u32 pllmr0_ccdv, tb, m;

 fwdva = 8 - ((pllmr1 & 0x00070000) >> 16);
 fwdvb = 8 - ((pllmr1 & 0x00007000) >> 12);
 fbdv = (pllmr1 & 0x00f00000) >> 20;
 if (fbdv == 0)
  fbdv = 16;

 cbdv = ((pllmr0 & 0x00030000) >> 16) + 1;
 epdv = ((pllmr0 & 0x00000300) >> 8) + 2;
 opdv = ((pllmr0 & 0x00003000) >> 12) + 1;

 m = fbdv * fwdvb;

 pllmr0_ccdv = ((pllmr0 & 0x00300000) >> 20) + 1;
 if (pllmr1 & 0x80000000)
  cpu = sys_clk * m / (fwdva * pllmr0_ccdv);
 else
  cpu = sys_clk / pllmr0_ccdv;

 plb = cpu / cbdv;
 opb = plb / opdv;
 ebc = plb / epdv;
 tb = cpu;
 uart0 = cpu / (cpc0_ucr & 0x0000007f);
 uart1 = cpu / ((cpc0_ucr & 0x00007f00) >> 8);

 dt_fixup_cpu_clocks(cpu, tb, 0);
 dt_fixup_clock("/plb", plb);
 dt_fixup_clock("/plb/opb", opb);
 dt_fixup_clock("/plb/ebc", ebc);
 dt_fixup_clock("/plb/opb/serial@ef600300", uart0);
 dt_fixup_clock("/plb/opb/serial@ef600400", uart1);
}
