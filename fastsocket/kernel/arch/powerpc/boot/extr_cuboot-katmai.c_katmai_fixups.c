
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enetaddr; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_address (int ,int ) ;
 int ibm440spe_fixup_clocks (unsigned long,int,int ) ;
 int ibm440spe_fixup_memsize () ;
 int ibm4xx_fixup_ebc_ranges (char*) ;

__attribute__((used)) static void katmai_fixups(void)
{
 unsigned long sysclk = 33333000;




 ibm440spe_fixup_clocks(sysclk, 6 * 1843200, 0);

 ibm440spe_fixup_memsize();

 dt_fixup_mac_address(0, bd.bi_enetaddr);

 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
}
