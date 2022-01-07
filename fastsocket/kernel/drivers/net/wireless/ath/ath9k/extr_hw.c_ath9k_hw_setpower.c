
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int power_mode; int chip_fullsleep; int ah_flags; } ;
struct ath_common {int dummy; } ;
typedef enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;


 int AH_UNPLUGGED ;



 int ATH_DBG_WARN_ON_ONCE (int) ;
 int RESET ;
 int ar9003_mci_set_full_sleep (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_set_power_awake (struct ath_hw*) ;
 int ath9k_set_power_network_sleep (struct ath_hw*) ;
 int ath9k_set_power_sleep (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,char const*,char const*) ;
 int ath_err (struct ath_common*,char*,int) ;

bool ath9k_hw_setpower(struct ath_hw *ah, enum ath9k_power_mode mode)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int status = 1;
 static const char *modes[] = {
  "AWAKE",
  "FULL-SLEEP",
  "NETWORK SLEEP",
  "UNDEFINED"
 };

 if (ah->power_mode == mode)
  return status;

 ath_dbg(common, RESET, "%s -> %s\n",
  modes[ah->power_mode], modes[mode]);

 switch (mode) {
 case 130:
  status = ath9k_hw_set_power_awake(ah);
  break;
 case 129:
  if (ath9k_hw_mci_is_enabled(ah))
   ar9003_mci_set_full_sleep(ah);

  ath9k_set_power_sleep(ah);
  ah->chip_fullsleep = 1;
  break;
 case 128:
  ath9k_set_power_network_sleep(ah);
  break;
 default:
  ath_err(common, "Unknown power mode %u\n", mode);
  return 0;
 }
 ah->power_mode = mode;







 if (!(ah->ah_flags & AH_UNPLUGGED))
  ATH_DBG_WARN_ON_ONCE(!status);

 return status;
}
