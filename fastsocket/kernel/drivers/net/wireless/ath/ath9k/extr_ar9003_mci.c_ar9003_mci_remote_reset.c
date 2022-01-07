
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int MCI_REMOTE_RESET ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_mci_remote_reset(struct ath_hw *ah, bool wait_done)
{
 u32 payload[4] = { 0xffffffff, 0xffffffff, 0xffffffff, 0xffffff00};

 ar9003_mci_send_message(ah, MCI_REMOTE_RESET, 0, payload, 16,
    wait_done, 0);
 udelay(5);
}
