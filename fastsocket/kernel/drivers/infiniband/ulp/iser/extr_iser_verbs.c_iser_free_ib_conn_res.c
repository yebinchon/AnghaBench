
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iser_cq_desc {int cq_index; } ;
struct iser_conn {scalar_t__ login_buf; scalar_t__ login_resp_dma; TYPE_2__* device; scalar_t__ login_req_dma; scalar_t__ page_vec; TYPE_3__* qp; int * fmr_pool; int cma_id; } ;
struct TYPE_6__ {TYPE_1__* recv_cq; } ;
struct TYPE_5__ {int ib_device; int * cq_active_qps; } ;
struct TYPE_4__ {scalar_t__ cq_context; } ;


 int BUG_ON (int ) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISER_RX_LOGIN_SIZE ;
 int ib_destroy_fmr_pool (int *) ;
 int ib_dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int iser_info (char*,struct iser_conn*,int ,int *,TYPE_3__*) ;
 int kfree (scalar_t__) ;
 int rdma_destroy_qp (int ) ;

__attribute__((used)) static int iser_free_ib_conn_res(struct iser_conn *ib_conn)
{
 int cq_index;
 BUG_ON(ib_conn == ((void*)0));

 iser_info("freeing conn %p cma_id %p fmr pool %p qp %p\n",
    ib_conn, ib_conn->cma_id,
    ib_conn->fmr_pool, ib_conn->qp);


 if (ib_conn->fmr_pool != ((void*)0))
  ib_destroy_fmr_pool(ib_conn->fmr_pool);

 if (ib_conn->qp != ((void*)0)) {
  cq_index = ((struct iser_cq_desc *)ib_conn->qp->recv_cq->cq_context)->cq_index;
  ib_conn->device->cq_active_qps[cq_index]--;

  rdma_destroy_qp(ib_conn->cma_id);
 }

 ib_conn->fmr_pool = ((void*)0);
 ib_conn->qp = ((void*)0);
 kfree(ib_conn->page_vec);

 if (ib_conn->login_buf) {
  if (ib_conn->login_req_dma)
   ib_dma_unmap_single(ib_conn->device->ib_device,
    ib_conn->login_req_dma,
    ISCSI_DEF_MAX_RECV_SEG_LEN, DMA_TO_DEVICE);
  if (ib_conn->login_resp_dma)
   ib_dma_unmap_single(ib_conn->device->ib_device,
    ib_conn->login_resp_dma,
    ISER_RX_LOGIN_SIZE, DMA_FROM_DEVICE);
  kfree(ib_conn->login_buf);
 }

 return 0;
}
