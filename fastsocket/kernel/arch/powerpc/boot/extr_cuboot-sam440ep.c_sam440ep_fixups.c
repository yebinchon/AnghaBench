
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bi_enet1addr; int bi_enetaddr; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_addresses (int *,int *) ;
 int ibm440ep_fixup_clocks (unsigned long,int,int) ;
 int ibm4xx_quiesce_eth (int *,int *) ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void sam440ep_fixups(void)
{
       unsigned long sysclk = 66666666;

       ibm440ep_fixup_clocks(sysclk, 11059200, 25000000);
       ibm4xx_sdram_fixup_memsize();
       ibm4xx_quiesce_eth((u32 *)0xef600e00, (u32 *)0xef600f00);
       dt_fixup_mac_addresses(&bd.bi_enetaddr, &bd.bi_enet1addr);
}
