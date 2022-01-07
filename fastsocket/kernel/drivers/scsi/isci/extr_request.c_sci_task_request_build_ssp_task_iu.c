
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_task_iu {int task_tag; int task_func; int LUN; } ;
struct TYPE_3__ {int LUN; } ;
struct sas_task {TYPE_1__ ssp_task; } ;
struct isci_tmf {int io_tag; int tmf_code; } ;
struct TYPE_4__ {struct ssp_task_iu tmf; } ;
struct isci_request {int flags; TYPE_2__ ssp; } ;


 int IREQ_TMF ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 struct isci_tmf* isci_request_access_tmf (struct isci_request*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ssp_task_iu*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sci_task_request_build_ssp_task_iu(struct isci_request *ireq)
{
 struct ssp_task_iu *task_iu;
 struct sas_task *task = isci_request_access_task(ireq);
 struct isci_tmf *isci_tmf = isci_request_access_tmf(ireq);

 task_iu = &ireq->ssp.tmf;

 memset(task_iu, 0, sizeof(struct ssp_task_iu));

 memcpy(task_iu->LUN, task->ssp_task.LUN, 8);

 task_iu->task_func = isci_tmf->tmf_code;
 task_iu->task_tag =
  (test_bit(IREQ_TMF, &ireq->flags)) ?
  isci_tmf->io_tag :
  SCI_CONTROLLER_INVALID_IO_TAG;
}
