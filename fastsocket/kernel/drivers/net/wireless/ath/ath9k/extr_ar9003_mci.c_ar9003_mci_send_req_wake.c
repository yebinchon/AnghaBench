
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int MCI_FLAG_DISABLE_TIMESTAMP ;
 int MCI_REQ_WAKE ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_mci_send_req_wake(struct ath_hw *ah, bool wait_done)
{
 ar9003_mci_send_message(ah, MCI_REQ_WAKE, MCI_FLAG_DISABLE_TIMESTAMP,
    ((void*)0), 0, wait_done, 0);
 udelay(5);
}
