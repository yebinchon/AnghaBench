
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static void
wlc_phy_txpwr_nphy_po_apply(u8 *srom_max, u8 pwr_offset,
       u8 rate_start, u8 rate_end)
{
 u8 rate;

 for (rate = rate_start; rate <= rate_end; rate++)
  srom_max[rate] -= 2 * pwr_offset;
}
