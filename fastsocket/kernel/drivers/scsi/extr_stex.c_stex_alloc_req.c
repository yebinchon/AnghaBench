
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {int req_head; int rq_size; int rq_count; struct req_msg* dma_mem; } ;
struct req_msg {int dummy; } ;



__attribute__((used)) static struct req_msg *stex_alloc_req(struct st_hba *hba)
{
 struct req_msg *req = hba->dma_mem + hba->req_head * hba->rq_size;

 ++hba->req_head;
 hba->req_head %= hba->rq_count+1;

 return req;
}
