
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int fcf_conn_rec_list; int elsbuf; int fabric_iocb_list; int lpfc_scsi_buf_list_put; int scsi_buf_list_put_lock; int lpfc_scsi_buf_list_get; int scsi_buf_list_get_lock; int work_waitq; int wait_4_mlo_m_q; int work_list; int port_list; int ndlp_lock; int hbalock; int fast_event_count; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
lpfc_setup_driver_resource_phase1(struct lpfc_hba *phba)
{



 atomic_set(&phba->fast_event_count, 0);
 spin_lock_init(&phba->hbalock);


 spin_lock_init(&phba->ndlp_lock);

 INIT_LIST_HEAD(&phba->port_list);
 INIT_LIST_HEAD(&phba->work_list);
 init_waitqueue_head(&phba->wait_4_mlo_m_q);


 init_waitqueue_head(&phba->work_waitq);


 spin_lock_init(&phba->scsi_buf_list_get_lock);
 INIT_LIST_HEAD(&phba->lpfc_scsi_buf_list_get);
 spin_lock_init(&phba->scsi_buf_list_put_lock);
 INIT_LIST_HEAD(&phba->lpfc_scsi_buf_list_put);


 INIT_LIST_HEAD(&phba->fabric_iocb_list);


 INIT_LIST_HEAD(&phba->elsbuf);


 INIT_LIST_HEAD(&phba->fcf_conn_rec_list);

 return 0;
}
