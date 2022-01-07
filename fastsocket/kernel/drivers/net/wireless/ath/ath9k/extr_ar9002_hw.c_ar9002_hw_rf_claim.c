
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int analog5GhzRev; } ;
struct ath_hw {TYPE_1__ hw_version; } ;


 int AR_PHY (int ) ;




 int AR_RADIO_SREV_MAJOR ;
 int EOPNOTSUPP ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9002_hw_get_radiorev (struct ath_hw*) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_err (int ,char*,int) ;

int ar9002_hw_rf_claim(struct ath_hw *ah)
{
 u32 val;

 REG_WRITE(ah, AR_PHY(0), 0x00000007);

 val = ar9002_hw_get_radiorev(ah);
 switch (val & AR_RADIO_SREV_MAJOR) {
 case 0:
  val = 128;
  break;
 case 128:
 case 129:
 case 130:
 case 131:
  break;
 default:
  ath_err(ath9k_hw_common(ah),
   "Radio Chip Rev 0x%02X not supported\n",
   val & AR_RADIO_SREV_MAJOR);
  return -EOPNOTSUPP;
 }

 ah->hw_version.analog5GhzRev = val;

 return 0;
}
