
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_scsi_buf {int dummy; } ;
struct lpfc_iocbq {scalar_t__ context1; } ;
struct lpfc_hba {int dummy; } ;


 int lpfc_release_scsi_buf (struct lpfc_hba*,struct lpfc_scsi_buf*) ;

__attribute__((used)) static void
lpfc_tskmgmt_def_cmpl(struct lpfc_hba *phba,
   struct lpfc_iocbq *cmdiocbq,
   struct lpfc_iocbq *rspiocbq)
{
 struct lpfc_scsi_buf *lpfc_cmd =
  (struct lpfc_scsi_buf *) cmdiocbq->context1;
 if (lpfc_cmd)
  lpfc_release_scsi_buf(phba, lpfc_cmd);
 return;
}
