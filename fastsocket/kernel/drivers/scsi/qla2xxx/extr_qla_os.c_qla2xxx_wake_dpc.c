
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct scsi_qla_host {int dpc_flags; struct qla_hw_data* hw; } ;
struct qla_hw_data {struct task_struct* dpc_thread; } ;


 int UNLOADING ;
 int test_bit (int ,int *) ;
 int wake_up_process (struct task_struct*) ;

void
qla2xxx_wake_dpc(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;
 struct task_struct *t = ha->dpc_thread;

 if (!test_bit(UNLOADING, &vha->dpc_flags) && t)
  wake_up_process(t);
}
