
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_scsi_buf {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {struct lpfc_scsi_buf* (* lpfc_get_scsi_buf ) (struct lpfc_hba*,struct lpfc_nodelist*) ;} ;


 struct lpfc_scsi_buf* stub1 (struct lpfc_hba*,struct lpfc_nodelist*) ;

__attribute__((used)) static struct lpfc_scsi_buf*
lpfc_get_scsi_buf(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp)
{
 return phba->lpfc_get_scsi_buf(phba, ndlp);
}
