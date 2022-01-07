
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_core {int queue_thread; TYPE_1__* shost; int task_queue; scalar_t__ task_queue_size; int task_queue_flush; int task_queue_lock; } ;
struct sas_ha_struct {struct scsi_core core; } ;
struct TYPE_2__ {int host_no; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct sas_ha_struct*,char*,int ) ;
 int mutex_init (int *) ;
 int sas_queue_thread ;
 int spin_lock_init (int *) ;

int sas_init_queue(struct sas_ha_struct *sas_ha)
{
 struct scsi_core *core = &sas_ha->core;

 spin_lock_init(&core->task_queue_lock);
 mutex_init(&core->task_queue_flush);
 core->task_queue_size = 0;
 INIT_LIST_HEAD(&core->task_queue);

 core->queue_thread = kthread_run(sas_queue_thread, sas_ha,
      "sas_queue_%d", core->shost->host_no);
 if (IS_ERR(core->queue_thread))
  return PTR_ERR(core->queue_thread);
 return 0;
}
