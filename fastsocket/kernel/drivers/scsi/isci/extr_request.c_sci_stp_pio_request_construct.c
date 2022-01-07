
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index; int set; scalar_t__ offset; } ;
struct isci_stp_request {TYPE_2__ sgl; scalar_t__ status; } ;
struct TYPE_3__ {struct isci_stp_request req; } ;
struct isci_request {TYPE_1__ stp; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_SUCCESS ;
 int SCU_SGL_ELEMENT_PAIR_A ;
 int sci_request_build_sgl (struct isci_request*) ;
 int scu_stp_raw_request_construct_task_context (struct isci_request*) ;

__attribute__((used)) static enum sci_status sci_stp_pio_request_construct(struct isci_request *ireq,
         bool copy_rx_frame)
{
 struct isci_stp_request *stp_req = &ireq->stp.req;

 scu_stp_raw_request_construct_task_context(ireq);

 stp_req->status = 0;
 stp_req->sgl.offset = 0;
 stp_req->sgl.set = SCU_SGL_ELEMENT_PAIR_A;

 if (copy_rx_frame) {
  sci_request_build_sgl(ireq);
  stp_req->sgl.index = 0;
 } else {

  stp_req->sgl.index = -1;
 }

 return SCI_SUCCESS;
}
