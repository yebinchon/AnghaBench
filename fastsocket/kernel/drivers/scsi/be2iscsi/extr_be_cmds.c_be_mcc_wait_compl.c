
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; } ;
struct TYPE_5__ {TYPE_1__ q; } ;
struct TYPE_6__ {TYPE_2__ mcc_obj; } ;
struct beiscsi_hba {int fw_timeout; TYPE_3__ ctrl; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int EBUSY ;
 int EIO ;
 int KERN_ERR ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ beiscsi_error (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int beiscsi_process_mcc (struct beiscsi_hba*) ;
 int beiscsi_ue_detect (struct beiscsi_hba*) ;
 int mcc_timeout ;
 int udelay (int) ;

__attribute__((used)) static int be_mcc_wait_compl(struct beiscsi_hba *phba)
{
 int i, status;
 for (i = 0; i < mcc_timeout; i++) {
  if (beiscsi_error(phba))
   return -EIO;

  status = beiscsi_process_mcc(phba);
  if (status)
   return status;

  if (atomic_read(&phba->ctrl.mcc_obj.q.used) == 0)
   break;
  udelay(100);
 }
 if (i == mcc_timeout) {
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BC_%d : FW Timed Out\n");
  phba->fw_timeout = 1;
  beiscsi_ue_detect(phba);
  return -EBUSY;
 }
 return 0;
}
