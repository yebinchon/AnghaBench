
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int datawork; scalar_t__ data; scalar_t__ req; int * cmd; } ;


 int mxcmci_finish_request (struct mxcmci_host*,scalar_t__) ;
 int mxcmci_read_response (struct mxcmci_host*,unsigned int) ;
 int mxcmci_use_dma (struct mxcmci_host*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mxcmci_cmd_done(struct mxcmci_host *host, unsigned int stat)
{
 mxcmci_read_response(host, stat);
 host->cmd = ((void*)0);

 if (!host->data && host->req) {
  mxcmci_finish_request(host, host->req);
  return;
 }





 if (!mxcmci_use_dma(host) && host->data)
  schedule_work(&host->datawork);

}
