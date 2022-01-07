
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_tx_desc {int num_sge; int tx_sg; int dma_addr; } ;
struct iser_conn {int post_send_buf_count; int qp; TYPE_1__* device; } ;
struct ib_send_wr {unsigned long wr_id; int send_flags; int opcode; int num_sge; int sg_list; int * next; } ;
struct TYPE_2__ {int ib_device; } ;


 int DMA_TO_DEVICE ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int ISER_HEADERS_LEN ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,struct ib_send_wr**) ;
 int iser_err (char*,int) ;

int iser_post_send(struct iser_conn *ib_conn, struct iser_tx_desc *tx_desc)
{
 int ib_ret;
 struct ib_send_wr send_wr, *send_wr_failed;

 ib_dma_sync_single_for_device(ib_conn->device->ib_device,
  tx_desc->dma_addr, ISER_HEADERS_LEN, DMA_TO_DEVICE);

 send_wr.next = ((void*)0);
 send_wr.wr_id = (unsigned long)tx_desc;
 send_wr.sg_list = tx_desc->tx_sg;
 send_wr.num_sge = tx_desc->num_sge;
 send_wr.opcode = IB_WR_SEND;
 send_wr.send_flags = IB_SEND_SIGNALED;

 atomic_inc(&ib_conn->post_send_buf_count);

 ib_ret = ib_post_send(ib_conn->qp, &send_wr, &send_wr_failed);
 if (ib_ret) {
  iser_err("ib_post_send failed, ret:%d\n", ib_ret);
  atomic_dec(&ib_conn->post_send_buf_count);
 }
 return ib_ret;
}
