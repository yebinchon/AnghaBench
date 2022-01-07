
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int fabric_block_timer; int bit_flags; } ;


 int FABRIC_COMANDS_BLOCKED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
lpfc_block_fabric_iocbs(struct lpfc_hba *phba)
{
 int blocked;

 blocked = test_and_set_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);

 if (!blocked)
  mod_timer(&phba->fabric_block_timer,
     jiffies + msecs_to_jiffies(100));

 return;
}
