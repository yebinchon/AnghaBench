
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scsi_xri_cnt; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; int scsi_buf_list_get_lock; int scsi_buf_list_put_lock; int lpfc_scsi_buf_list_put; int lpfc_scsi_buf_list_get; } ;


 int EIO ;
 int LIST_HEAD (int ) ;
 int list_empty (int *) ;
 int list_splice (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int lpfc_sli4_post_scsi_sgl_list (struct lpfc_hba*,int *,int ) ;
 int post_sblist ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli4_repost_scsi_sgl_list(struct lpfc_hba *phba)
{
 LIST_HEAD(post_sblist);
 int num_posted, rc = 0;


 spin_lock_irq(&phba->scsi_buf_list_get_lock);
 spin_lock(&phba->scsi_buf_list_put_lock);
 list_splice_init(&phba->lpfc_scsi_buf_list_get, &post_sblist);
 list_splice(&phba->lpfc_scsi_buf_list_put, &post_sblist);
 spin_unlock(&phba->scsi_buf_list_put_lock);
 spin_unlock_irq(&phba->scsi_buf_list_get_lock);


 if (!list_empty(&post_sblist)) {
  num_posted = lpfc_sli4_post_scsi_sgl_list(phba, &post_sblist,
      phba->sli4_hba.scsi_xri_cnt);

  if (num_posted == 0)
   rc = -EIO;
 }
 return rc;
}
