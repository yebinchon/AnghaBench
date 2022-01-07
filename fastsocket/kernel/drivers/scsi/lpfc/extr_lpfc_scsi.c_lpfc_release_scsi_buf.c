
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_scsi_buf {int dummy; } ;
struct lpfc_hba {int (* lpfc_release_scsi_buf ) (struct lpfc_hba*,struct lpfc_scsi_buf*) ;} ;


 int stub1 (struct lpfc_hba*,struct lpfc_scsi_buf*) ;

__attribute__((used)) static void
lpfc_release_scsi_buf(struct lpfc_hba *phba, struct lpfc_scsi_buf *psb)
{

 phba->lpfc_release_scsi_buf(phba, psb);
}
