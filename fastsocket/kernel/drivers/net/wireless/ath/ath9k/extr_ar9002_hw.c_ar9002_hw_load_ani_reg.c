
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ia_rows; } ;
struct ath_hw {TYPE_1__ iniModes_9271_ANI_reg; } ;
struct ath9k_channel {int chanmode; } ;


 scalar_t__ AR_PHY_CCK_DETECT ;
 scalar_t__ AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 scalar_t__ INI_RA (TYPE_1__*,int,scalar_t__) ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 scalar_t__ REG_READ (struct ath_hw*,scalar_t__) ;
 int REG_WRITE (struct ath_hw*,scalar_t__,scalar_t__) ;

void ar9002_hw_load_ani_reg(struct ath_hw *ah, struct ath9k_channel *chan)
{
 u32 modesIndex;
 int i;

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
  return;
 }

 ENABLE_REGWRITE_BUFFER(ah);

 for (i = 0; i < ah->iniModes_9271_ANI_reg.ia_rows; i++) {
  u32 reg = INI_RA(&ah->iniModes_9271_ANI_reg, i, 0);
  u32 val = INI_RA(&ah->iniModes_9271_ANI_reg, i, modesIndex);
  u32 val_orig;

  if (reg == AR_PHY_CCK_DETECT) {
   val_orig = REG_READ(ah, reg);
   val &= AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;
   val_orig &= ~AR_PHY_CCK_DETECT_WEAK_SIG_THR_CCK;

   REG_WRITE(ah, reg, val|val_orig);
  } else
   REG_WRITE(ah, reg, val);
 }

 REGWRITE_BUFFER_FLUSH(ah);
}
