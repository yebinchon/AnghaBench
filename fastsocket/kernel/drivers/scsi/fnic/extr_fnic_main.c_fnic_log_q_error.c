
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fnic {unsigned int raw_wq_count; unsigned int rq_count; unsigned int wq_copy_count; TYPE_7__* lport; TYPE_6__* wq_copy; TYPE_4__* rq; TYPE_2__* wq; } ;
struct TYPE_14__ {int host; } ;
struct TYPE_13__ {TYPE_5__* ctrl; } ;
struct TYPE_12__ {int error_status; } ;
struct TYPE_11__ {TYPE_3__* ctrl; } ;
struct TYPE_10__ {int error_status; } ;
struct TYPE_9__ {TYPE_1__* ctrl; } ;
struct TYPE_8__ {int error_status; } ;


 int KERN_ERR ;
 scalar_t__ ioread32 (int *) ;
 int shost_printk (int ,int ,char*,unsigned int,scalar_t__) ;

void fnic_log_q_error(struct fnic *fnic)
{
 unsigned int i;
 u32 error_status;

 for (i = 0; i < fnic->raw_wq_count; i++) {
  error_status = ioread32(&fnic->wq[i].ctrl->error_status);
  if (error_status)
   shost_printk(KERN_ERR, fnic->lport->host,
         "WQ[%d] error_status"
         " %d\n", i, error_status);
 }

 for (i = 0; i < fnic->rq_count; i++) {
  error_status = ioread32(&fnic->rq[i].ctrl->error_status);
  if (error_status)
   shost_printk(KERN_ERR, fnic->lport->host,
         "RQ[%d] error_status"
         " %d\n", i, error_status);
 }

 for (i = 0; i < fnic->wq_copy_count; i++) {
  error_status = ioread32(&fnic->wq_copy[i].ctrl->error_status);
  if (error_status)
   shost_printk(KERN_ERR, fnic->lport->host,
         "CWQ[%d] error_status"
         " %d\n", i, error_status);
 }
}
