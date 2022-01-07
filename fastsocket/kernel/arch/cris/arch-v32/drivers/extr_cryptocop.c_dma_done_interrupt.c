
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cryptocop_prio_job {int node; int iop; TYPE_2__* oper; } ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ reg_dma_rw_ack_intr ;
typedef int irqreturn_t ;
struct TYPE_5__ {int cb_data; int (* cb ) (TYPE_2__*,int ) ;scalar_t__ fast_callback; scalar_t__ operation_status; } ;


 int DEBUG (int ) ;
 int IN_DMA_INST ;
 int IRQ_HANDLED ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int cryptocop_completed_jobs ;
 int cryptocop_completed_jobs_lock ;
 int cryptocop_process_lock ;
 struct cryptocop_prio_job* cryptocop_running_job ;
 int cryptocop_start_job () ;
 int cryptocop_tasklet ;
 int delete_internal_operation (int ) ;
 int dma ;
 int kfree (struct cryptocop_prio_job*) ;
 int list_add_tail (int *,int *) ;
 int printk (char*) ;
 int running_job_lock ;
 int rw_ack_intr ;
 int spin_lock (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t
dma_done_interrupt(int irq, void *dev_id)
{
 struct cryptocop_prio_job *done_job;
 reg_dma_rw_ack_intr ack_intr = {
  .data = 1,
 };

 REG_WR(dma, IN_DMA_INST, rw_ack_intr, ack_intr);

 DEBUG(printk("cryptocop DMA done\n"));

 spin_lock(&running_job_lock);
 if (cryptocop_running_job == ((void*)0)){
  printk("stream co-processor got interrupt when not busy\n");
  spin_unlock(&running_job_lock);
  return IRQ_HANDLED;
 }
 done_job = cryptocop_running_job;
 cryptocop_running_job = ((void*)0);
 spin_unlock(&running_job_lock);


 if (!spin_trylock(&cryptocop_process_lock)){
  DEBUG(printk("cryptocop irq handler, not starting a job\n"));
 } else {
  cryptocop_start_job();
  spin_unlock(&cryptocop_process_lock);
 }

 done_job->oper->operation_status = 0;
 if (done_job->oper->fast_callback){

  done_job->oper->cb(done_job->oper, done_job->oper->cb_data);
  delete_internal_operation(done_job->iop);
  kfree(done_job);
 } else {
  spin_lock(&cryptocop_completed_jobs_lock);
  list_add_tail(&(done_job->node), &cryptocop_completed_jobs);
  spin_unlock(&cryptocop_completed_jobs_lock);
  tasklet_schedule(&cryptocop_tasklet);
 }

 DEBUG(printk("cryptocop leave irq handler\n"));
 return IRQ_HANDLED;
}
