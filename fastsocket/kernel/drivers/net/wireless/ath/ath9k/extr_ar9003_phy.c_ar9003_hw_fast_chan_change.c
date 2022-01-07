
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ath_hw {scalar_t__ modes_index; int iniAdditional; int iniModesFastClock; int iniModesTxGain; int ini_radio_post_sys2ant; int * iniRadio; int * iniBB; int * iniMac; int * iniSOC; } ;
struct ath9k_channel {int chanmode; } ;


 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 size_t ATH_INI_POST ;
 int EINVAL ;
 scalar_t__ IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 int REG_WRITE_ARRAY (int *,int,unsigned int) ;
 int ar9003_hw_prog_ini (struct ath_hw*,int *,scalar_t__) ;
 int ar9003_hw_set_rfmode (struct ath_hw*,struct ath9k_channel*) ;

__attribute__((used)) static int ar9003_hw_fast_chan_change(struct ath_hw *ah,
          struct ath9k_channel *chan,
          u8 *ini_reloaded)
{
 unsigned int regWrites = 0;
 u32 modesIndex;

 switch (chan->chanmode) {
 case 136:
 case 135:
  modesIndex = 1;
  break;
 case 133:
 case 134:
  modesIndex = 2;
  break;
 case 131:
 case 130:
 case 132:
  modesIndex = 4;
  break;
 case 128:
 case 129:
  modesIndex = 3;
  break;

 default:
  return -EINVAL;
 }

 if (modesIndex == ah->modes_index) {
  *ini_reloaded = 0;
  goto set_rfmode;
 }

 ar9003_hw_prog_ini(ah, &ah->iniSOC[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniMac[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniBB[ATH_INI_POST], modesIndex);
 ar9003_hw_prog_ini(ah, &ah->iniRadio[ATH_INI_POST], modesIndex);

 if (AR_SREV_9462_20(ah))
  ar9003_hw_prog_ini(ah, &ah->ini_radio_post_sys2ant,
       modesIndex);

 REG_WRITE_ARRAY(&ah->iniModesTxGain, modesIndex, regWrites);





 if (IS_CHAN_A_FAST_CLOCK(ah, chan))
  REG_WRITE_ARRAY(&ah->iniModesFastClock, modesIndex, regWrites);

 if (AR_SREV_9565(ah))
  REG_WRITE_ARRAY(&ah->iniModesFastClock, 1, regWrites);

 REG_WRITE_ARRAY(&ah->iniAdditional, 1, regWrites);

 ah->modes_index = modesIndex;
 *ini_reloaded = 1;

set_rfmode:
 ar9003_hw_set_rfmode(ah, chan);
 return 0;
}
