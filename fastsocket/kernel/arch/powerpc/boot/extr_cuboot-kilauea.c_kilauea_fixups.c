
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enet1addr; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 int KILAUEA_SYS_EXT_SERIAL_CLOCK ;
 TYPE_1__ bd ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int dt_fixup_memory (int ,int ) ;
 int ibm405ex_fixup_clocks (unsigned long,int ) ;
 int ibm4xx_fixup_ebc_ranges (char*) ;

__attribute__((used)) static void kilauea_fixups(void)
{
 unsigned long sysclk = 33333333;

 ibm405ex_fixup_clocks(sysclk, KILAUEA_SYS_EXT_SERIAL_CLOCK);
 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 ibm4xx_fixup_ebc_ranges("/plb/opb/ebc");
 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);
}
