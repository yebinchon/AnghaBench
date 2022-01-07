
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_EECD_GNT ;
 int E1000_EECD_REQ ;
 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ E1000_NVM_GRANT_ATTEMPTS ;
 int EECD ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

s32 e1000e_acquire_nvm(struct e1000_hw *hw)
{
 u32 eecd = er32(EECD);
 s32 timeout = E1000_NVM_GRANT_ATTEMPTS;

 ew32(EECD, eecd | E1000_EECD_REQ);
 eecd = er32(EECD);

 while (timeout) {
  if (eecd & E1000_EECD_GNT)
   break;
  udelay(5);
  eecd = er32(EECD);
  timeout--;
 }

 if (!timeout) {
  eecd &= ~E1000_EECD_REQ;
  ew32(EECD, eecd);
  e_dbg("Could not acquire NVM grant\n");
  return -E1000_ERR_NVM;
 }

 return 0;
}
