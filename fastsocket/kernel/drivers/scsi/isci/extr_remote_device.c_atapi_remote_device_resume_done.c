
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_request {int sm; } ;
struct isci_remote_device {struct isci_request* working_request; } ;


 int SCI_REQ_COMPLETED ;
 int sci_change_state (int *,int ) ;

__attribute__((used)) static void atapi_remote_device_resume_done(void *_dev)
{
 struct isci_remote_device *idev = _dev;
 struct isci_request *ireq = idev->working_request;

 sci_change_state(&ireq->sm, SCI_REQ_COMPLETED);
}
