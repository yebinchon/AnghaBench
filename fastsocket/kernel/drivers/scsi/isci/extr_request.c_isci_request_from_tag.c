
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isci_request {scalar_t__ num_sg_entries; scalar_t__ flags; int * io_request_completion; int io_tag; } ;
struct isci_host {struct isci_request** reqs; } ;


 size_t ISCI_TAG_TCI (int ) ;

__attribute__((used)) static struct isci_request *isci_request_from_tag(struct isci_host *ihost, u16 tag)
{
 struct isci_request *ireq;

 ireq = ihost->reqs[ISCI_TAG_TCI(tag)];
 ireq->io_tag = tag;
 ireq->io_request_completion = ((void*)0);
 ireq->flags = 0;
 ireq->num_sg_entries = 0;

 return ireq;
}
