
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AH_TIME_QUANTUM ;
 int ANY ;
 int BUG_ON (int) ;
 int REG_READ (struct ath_hw*,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (int ,int ,char*,int,int,int,int,int) ;
 int udelay (int) ;

bool ath9k_hw_wait(struct ath_hw *ah, u32 reg, u32 mask, u32 val, u32 timeout)
{
 int i;

 BUG_ON(timeout < AH_TIME_QUANTUM);

 for (i = 0; i < (timeout / AH_TIME_QUANTUM); i++) {
  if ((REG_READ(ah, reg) & mask) == val)
   return 1;

  udelay(AH_TIME_QUANTUM);
 }

 ath_dbg(ath9k_hw_common(ah), ANY,
  "timeout (%d us) on reg 0x%x: 0x%08x & 0x%08x != 0x%08x\n",
  timeout, reg, REG_READ(ah, reg), mask, val);

 return 0;
}
