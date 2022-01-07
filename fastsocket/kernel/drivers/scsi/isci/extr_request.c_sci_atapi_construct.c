
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_task {scalar_t__ data_dir; scalar_t__ total_xfer_len; } ;
struct TYPE_3__ {scalar_t__ fis_type; } ;
struct host_to_dev_fis {int features; } ;
struct TYPE_4__ {TYPE_1__ rsp; struct host_to_dev_fis cmd; } ;
struct isci_request {TYPE_2__ stp; } ;


 int ATAPI_PKT_DMA ;
 scalar_t__ DMA_NONE ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 int scu_stp_raw_request_construct_task_context (struct isci_request*) ;

__attribute__((used)) static void sci_atapi_construct(struct isci_request *ireq)
{
 struct host_to_dev_fis *h2d_fis = &ireq->stp.cmd;
 struct sas_task *task;






 h2d_fis->features |= ATAPI_PKT_DMA;

 scu_stp_raw_request_construct_task_context(ireq);

 task = isci_request_access_task(ireq);
 if (task->data_dir == DMA_NONE)
  task->total_xfer_len = 0;




 ireq->stp.rsp.fis_type = 0;
}
