
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;


 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_mcc_wait_compl (struct beiscsi_hba*) ;

int be_mcc_notify_wait(struct beiscsi_hba *phba)
{
 be_mcc_notify(phba);
 return be_mcc_wait_compl(phba);
}
