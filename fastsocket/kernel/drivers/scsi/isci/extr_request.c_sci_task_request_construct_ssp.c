
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_request {int sm; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_REQ_CONSTRUCTED ;
 int SCI_SUCCESS ;
 int sci_change_state (int *,int ) ;
 int sci_task_request_build_ssp_task_iu (struct isci_request*) ;
 int scu_ssp_task_request_construct_task_context (struct isci_request*) ;

enum sci_status sci_task_request_construct_ssp(
 struct isci_request *ireq)
{

 scu_ssp_task_request_construct_task_context(ireq);


 sci_task_request_build_ssp_task_iu(ireq);

 sci_change_state(&ireq->sm, SCI_REQ_CONSTRUCTED);

 return SCI_SUCCESS;
}
