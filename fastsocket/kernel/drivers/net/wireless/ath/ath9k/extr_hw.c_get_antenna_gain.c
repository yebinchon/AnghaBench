
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath9k_channel {int dummy; } ;
typedef enum eeprom_param { ____Placeholder_eeprom_param } eeprom_param ;
struct TYPE_2__ {int (* get_eeprom ) (struct ath_hw*,int) ;} ;


 int EEP_ANTENNA_GAIN_2G ;
 int EEP_ANTENNA_GAIN_5G ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int stub1 (struct ath_hw*,int) ;

__attribute__((used)) static int get_antenna_gain(struct ath_hw *ah, struct ath9k_channel *chan)
{
 enum eeprom_param gain_param;

 if (IS_CHAN_2GHZ(chan))
  gain_param = EEP_ANTENNA_GAIN_2G;
 else
  gain_param = EEP_ANTENNA_GAIN_5G;

 return ah->eep_ops->get_eeprom(ah, gain_param);
}
