
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int s16 ;
struct TYPE_2__ {size_t rate_ofdm; int tx_phy_ctl3; } ;


 size_t LEGACY_PHYCFG_TABLE_SIZE ;
 TYPE_1__* legacy_phycfg_table ;

s16 brcms_c_rate_legacy_phyctl(uint rate)
{
 uint i;
 for (i = 0; i < LEGACY_PHYCFG_TABLE_SIZE; i++)
  if (rate == legacy_phycfg_table[i].rate_ofdm)
   return legacy_phycfg_table[i].tx_phy_ctl3;

 return -1;
}
