
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ reg; scalar_t__ _2ghz_40; scalar_t__ _2ghz_20; scalar_t__ _5ghz_40; scalar_t__ _5ghz_20; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ar5416_phy_init ;

__attribute__((used)) static u32 carl9170_def_val(u32 reg, bool is_2ghz, bool is_40mhz)
{
 unsigned int i;
 for (i = 0; i < ARRAY_SIZE(ar5416_phy_init); i++) {
  if (ar5416_phy_init[i].reg != reg)
   continue;

  if (is_2ghz) {
   if (is_40mhz)
    return ar5416_phy_init[i]._2ghz_40;
   else
    return ar5416_phy_init[i]._2ghz_20;
  } else {
   if (is_40mhz)
    return ar5416_phy_init[i]._5ghz_40;
   else
    return ar5416_phy_init[i]._5ghz_20;
  }
 }
 return 0;
}
