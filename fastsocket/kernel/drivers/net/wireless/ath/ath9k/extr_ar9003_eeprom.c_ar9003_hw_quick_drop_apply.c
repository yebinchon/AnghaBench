
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int quick_drop_low; int quick_drop_high; } ;
struct TYPE_6__ {int quick_drop; } ;
struct TYPE_5__ {int quick_drop; } ;
struct ar9300_base_eep_hdr {int miscConfiguration; } ;
struct ar9300_eeprom {TYPE_3__ base_ext1; TYPE_2__ modalHeader5G; TYPE_1__ modalHeader2G; struct ar9300_base_eep_hdr baseEepHeader; } ;
struct TYPE_8__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_4__ eeprom; } ;
typedef int s32 ;


 int AR_PHY_AGC ;
 int AR_PHY_AGC_QUICK_DROP ;
 int BIT (int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int ar9003_hw_power_interpolate (int,int*,int*,int) ;

__attribute__((used)) static void ar9003_hw_quick_drop_apply(struct ath_hw *ah, u16 freq)
{
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 struct ar9300_base_eep_hdr *pBase = &eep->baseEepHeader;
 int quick_drop;
 s32 t[3], f[3] = {5180, 5500, 5785};

 if (!(pBase->miscConfiguration & BIT(1)))
  return;

 if (freq < 4000)
  quick_drop = eep->modalHeader2G.quick_drop;
 else {
  t[0] = eep->base_ext1.quick_drop_low;
  t[1] = eep->modalHeader5G.quick_drop;
  t[2] = eep->base_ext1.quick_drop_high;
  quick_drop = ar9003_hw_power_interpolate(freq, f, t, 3);
 }
 REG_RMW_FIELD(ah, AR_PHY_AGC, AR_PHY_AGC_QUICK_DROP, quick_drop);
}
