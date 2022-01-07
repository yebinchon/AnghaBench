
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct isci_tmf {int dummy; } ;
struct TYPE_2__ {struct isci_tmf* tmf_task_ptr; } ;
struct isci_request {int flags; TYPE_1__ ttype_ptr; } ;
struct isci_host {int dummy; } ;


 int IREQ_TMF ;
 struct isci_request* isci_request_from_tag (struct isci_host*,int ) ;
 int set_bit (int ,int *) ;

struct isci_request *isci_tmf_request_from_tag(struct isci_host *ihost,
            struct isci_tmf *isci_tmf,
            u16 tag)
{
 struct isci_request *ireq;

 ireq = isci_request_from_tag(ihost, tag);
 ireq->ttype_ptr.tmf_task_ptr = isci_tmf;
 set_bit(IREQ_TMF, &ireq->flags);

 return ireq;
}
