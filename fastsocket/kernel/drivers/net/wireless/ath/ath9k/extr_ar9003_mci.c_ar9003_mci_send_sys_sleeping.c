
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int MCI_FLAG_DISABLE_TIMESTAMP ;
 int MCI_SYS_SLEEPING ;
 int ar9003_mci_send_message (struct ath_hw*,int ,int ,int *,int ,int,int) ;

__attribute__((used)) static void ar9003_mci_send_sys_sleeping(struct ath_hw *ah, bool wait_done)
{
 ar9003_mci_send_message(ah, MCI_SYS_SLEEPING,
    MCI_FLAG_DISABLE_TIMESTAMP,
    ((void*)0), 0, wait_done, 0);
}
