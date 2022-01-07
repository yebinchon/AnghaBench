
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bamboo_mac0 ;
 int bamboo_mac1 ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int ibm440ep_fixup_clocks (unsigned long,int,int) ;
 int ibm4xx_quiesce_eth (int *,int *) ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void bamboo_fixups(void)
{
 unsigned long sysclk = 33333333;

 ibm440ep_fixup_clocks(sysclk, 11059200, 25000000);
 ibm4xx_sdram_fixup_memsize();
 ibm4xx_quiesce_eth((u32 *)0xef600e00, (u32 *)0xef600f00);
 dt_fixup_mac_address_by_alias("ethernet0", bamboo_mac0);
 dt_fixup_mac_address_by_alias("ethernet1", bamboo_mac1);
}
