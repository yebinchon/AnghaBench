
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_MCI_COMMAND2 ;
 int AR_MCI_COMMAND2_RESET_REQ_WAKEUP ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_mci_reset_req_wakeup(struct ath_hw *ah)
{
 REG_RMW_FIELD(ah, AR_MCI_COMMAND2,
        AR_MCI_COMMAND2_RESET_REQ_WAKEUP, 1);
 udelay(1);
 REG_RMW_FIELD(ah, AR_MCI_COMMAND2,
        AR_MCI_COMMAND2_RESET_REQ_WAKEUP, 0);
}
