
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {unsigned int rq_count; TYPE_1__* lport; int * rq; int * cq; } ;
struct TYPE_2__ {int host; } ;


 int KERN_ERR ;
 int fnic_alloc_rq_frame ;
 int fnic_rq_cmpl_handler_cont ;
 int shost_printk (int ,int ,char*) ;
 unsigned int vnic_cq_service (int *,int,int ,int *) ;
 int vnic_rq_fill (int *,int ) ;

int fnic_rq_cmpl_handler(struct fnic *fnic, int rq_work_to_do)
{
 unsigned int tot_rq_work_done = 0, cur_work_done;
 unsigned int i;
 int err;

 for (i = 0; i < fnic->rq_count; i++) {
  cur_work_done = vnic_cq_service(&fnic->cq[i], rq_work_to_do,
      fnic_rq_cmpl_handler_cont,
      ((void*)0));
  if (cur_work_done) {
   err = vnic_rq_fill(&fnic->rq[i], fnic_alloc_rq_frame);
   if (err)
    shost_printk(KERN_ERR, fnic->lport->host,
          "fnic_alloc_rq_frame cant alloc"
          " frame\n");
  }
  tot_rq_work_done += cur_work_done;
 }

 return tot_rq_work_done;
}
