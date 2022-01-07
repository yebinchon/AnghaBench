
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssp_cmd_iu {int cdb; scalar_t__ _r_c; int task_attr; int task_prio; scalar_t__ en_fburst; scalar_t__ _r_b; scalar_t__ _r_a; scalar_t__ add_cdb_len; int LUN; } ;
struct TYPE_4__ {int cdb; int task_attr; int task_prio; int LUN; } ;
struct sas_task {TYPE_2__ ssp_task; } ;
struct TYPE_3__ {struct ssp_cmd_iu cmd; } ;
struct isci_request {TYPE_1__ ssp; } ;


 struct sas_task* isci_request_access_task (struct isci_request*) ;
 int memcpy (int ,int ,int) ;
 int sci_swab32_cpy (int *,int ,int) ;

__attribute__((used)) static void sci_io_request_build_ssp_command_iu(struct isci_request *ireq)
{
 struct ssp_cmd_iu *cmd_iu;
 struct sas_task *task = isci_request_access_task(ireq);

 cmd_iu = &ireq->ssp.cmd;

 memcpy(cmd_iu->LUN, task->ssp_task.LUN, 8);
 cmd_iu->add_cdb_len = 0;
 cmd_iu->_r_a = 0;
 cmd_iu->_r_b = 0;
 cmd_iu->en_fburst = 0;
 cmd_iu->task_prio = task->ssp_task.task_prio;
 cmd_iu->task_attr = task->ssp_task.task_attr;
 cmd_iu->_r_c = 0;

 sci_swab32_cpy(&cmd_iu->cdb, task->ssp_task.cdb,
         sizeof(task->ssp_task.cdb) / sizeof(u32));
}
