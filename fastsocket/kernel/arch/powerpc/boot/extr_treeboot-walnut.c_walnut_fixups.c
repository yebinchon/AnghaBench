
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ WALNUT_OPENBIOS_MAC_OFF ;
 int dt_fixup_mac_address_by_alias (char*,int *) ;
 int ibm405gp_fixup_clocks (int,int) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;
 int ibm4xx_quiesce_eth (int *,int *) ;
 int ibm4xx_sdram_fixup_memsize () ;
 int walnut_flashsel_fixup () ;

__attribute__((used)) static void walnut_fixups(void)
{
 ibm4xx_sdram_fixup_memsize();
 ibm405gp_fixup_clocks(33330000, 0xa8c000);
 ibm4xx_quiesce_eth((u32 *)0xef600800, ((void*)0));
 ibm4xx_fixup_ebc_ranges("/plb/ebc");
 walnut_flashsel_fixup();
 dt_fixup_mac_address_by_alias("ethernet0", (u8 *) WALNUT_OPENBIOS_MAC_OFF);
}
