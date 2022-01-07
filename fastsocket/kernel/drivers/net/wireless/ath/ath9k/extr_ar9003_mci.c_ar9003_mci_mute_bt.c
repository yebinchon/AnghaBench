
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_MCI_MSG_ATTRIBUTES_TABLE ;
 int AR_MCI_TX_CTRL ;
 int AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ar9003_mci_send_lna_take (struct ath_hw*,int) ;
 int ar9003_mci_send_sys_sleeping (struct ath_hw*,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_mci_mute_bt(struct ath_hw *ah)
{

 REG_WRITE(ah, AR_MCI_MSG_ATTRIBUTES_TABLE, 0xffff0000);
 REG_SET_BIT(ah, AR_MCI_TX_CTRL, AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);


 udelay(10);






 ar9003_mci_send_lna_take(ah, 1);

 udelay(5);

 ar9003_mci_send_sys_sleeping(ah, 1);
}
