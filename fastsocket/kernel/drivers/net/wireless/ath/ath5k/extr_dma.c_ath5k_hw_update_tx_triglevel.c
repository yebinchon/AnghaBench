
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath5k_hw {scalar_t__ ah_imr; scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_INT_GLOBAL ;
 scalar_t__ AR5K_REG_MS (int ,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,scalar_t__) ;
 int AR5K_TRIG_LVL ;
 scalar_t__ AR5K_TUNE_MAX_TX_FIFO_THRES ;
 scalar_t__ AR5K_TUNE_MIN_TX_FIFO_THRES ;
 int AR5K_TXCFG ;
 int AR5K_TXCFG_TXFULL ;
 int EIO ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,scalar_t__,int ) ;
 scalar_t__ ath5k_hw_set_imr (struct ath5k_hw*,scalar_t__) ;

int
ath5k_hw_update_tx_triglevel(struct ath5k_hw *ah, bool increase)
{
 u32 trigger_level, imr;
 int ret = -EIO;




 imr = ath5k_hw_set_imr(ah, ah->ah_imr & ~AR5K_INT_GLOBAL);

 trigger_level = AR5K_REG_MS(ath5k_hw_reg_read(ah, AR5K_TXCFG),
   AR5K_TXCFG_TXFULL);

 if (!increase) {
  if (--trigger_level < AR5K_TUNE_MIN_TX_FIFO_THRES)
   goto done;
 } else
  trigger_level +=
   ((AR5K_TUNE_MAX_TX_FIFO_THRES - trigger_level) / 2);




 if (ah->ah_version == AR5K_AR5210)
  ath5k_hw_reg_write(ah, trigger_level, AR5K_TRIG_LVL);
 else
  AR5K_REG_WRITE_BITS(ah, AR5K_TXCFG,
    AR5K_TXCFG_TXFULL, trigger_level);

 ret = 0;

done:



 ath5k_hw_set_imr(ah, imr);

 return ret;
}
