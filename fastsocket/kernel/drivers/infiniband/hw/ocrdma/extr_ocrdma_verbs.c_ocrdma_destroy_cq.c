
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int db_page_size; int unmapped_db; } ;
struct ocrdma_dev {int ** cq_tbl; TYPE_1__ nic_info; } ;
struct ocrdma_cq {size_t id; scalar_t__ ucontext; int len; scalar_t__ pa; struct ocrdma_dev* dev; } ;
struct ib_cq {int dummy; } ;


 struct ocrdma_cq* get_ocrdma_cq (struct ib_cq*) ;
 int kfree (struct ocrdma_cq*) ;
 int ocrdma_del_mmap (scalar_t__,int ,int ) ;
 int ocrdma_mbx_destroy_cq (struct ocrdma_dev*,struct ocrdma_cq*) ;

int ocrdma_destroy_cq(struct ib_cq *ibcq)
{
 int status;
 struct ocrdma_cq *cq = get_ocrdma_cq(ibcq);
 struct ocrdma_dev *dev = cq->dev;

 status = ocrdma_mbx_destroy_cq(dev, cq);

 if (cq->ucontext) {
  ocrdma_del_mmap(cq->ucontext, (u64) cq->pa, cq->len);
  ocrdma_del_mmap(cq->ucontext, dev->nic_info.unmapped_db,
    dev->nic_info.db_page_size);
 }
 dev->cq_tbl[cq->id] = ((void*)0);

 kfree(cq);
 return status;
}
