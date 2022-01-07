
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int total_xfer_len; int data_dir; } ;
struct isci_request {int sm; int protocol; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SAS_PROTOCOL_SSP ;
 int SCI_REQ_CONSTRUCTED ;
 int SCI_SUCCESS ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 int sci_change_state (int *,int ) ;
 int sci_io_request_build_ssp_command_iu (struct isci_request*) ;
 int scu_ssp_io_request_construct_task_context (struct isci_request*,int ,int ) ;

__attribute__((used)) static enum sci_status sci_io_request_construct_basic_ssp(struct isci_request *ireq)
{
 struct sas_task *task = isci_request_access_task(ireq);

 ireq->protocol = SAS_PROTOCOL_SSP;

 scu_ssp_io_request_construct_task_context(ireq,
        task->data_dir,
        task->total_xfer_len);

 sci_io_request_build_ssp_command_iu(ireq);

 sci_change_state(&ireq->sm, SCI_REQ_CONSTRUCTED);

 return SCI_SUCCESS;
}
