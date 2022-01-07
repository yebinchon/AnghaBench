
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int dt_fixup_memory (int ,int ) ;
 int get_clocks () ;

__attribute__((used)) static void acadia_fixups(void)
{
 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 get_clocks();
 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
}
