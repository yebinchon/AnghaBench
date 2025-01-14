
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_rx_desc {int dummy; } ;
struct iser_device {struct ib_cq** rx_cq; } ;
struct iser_cq_desc {int cq_index; struct iser_device* device; } ;
struct iser_conn {int post_recv_buf_count; } ;
struct ib_wc {scalar_t__ status; scalar_t__ opcode; int vendor_err; scalar_t__ wr_id; scalar_t__ byte_len; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {struct iser_conn* qp_context; } ;


 int BUG_ON (int ) ;
 int IB_CQ_NEXT_COMP ;
 scalar_t__ IB_WC_RECV ;
 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int ib_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 int iser_dbg (char*,int,int) ;
 scalar_t__ iser_drain_tx_cq (struct iser_device*,int) ;
 int iser_err (char*,scalar_t__,scalar_t__,...) ;
 int iser_handle_comp_error (int *,struct iser_conn*) ;
 int iser_rcv_completion (struct iser_rx_desc*,unsigned long,struct iser_conn*) ;

__attribute__((used)) static void iser_cq_tasklet_fn(unsigned long data)
{
 struct iser_cq_desc *cq_desc = (struct iser_cq_desc *)data;
 struct iser_device *device = cq_desc->device;
 int cq_index = cq_desc->cq_index;
 struct ib_cq *cq = device->rx_cq[cq_index];
  struct ib_wc wc;
  struct iser_rx_desc *desc;
  unsigned long xfer_len;
 struct iser_conn *ib_conn;
 int completed_tx, completed_rx;
 completed_tx = completed_rx = 0;

 while (ib_poll_cq(cq, 1, &wc) == 1) {
  desc = (struct iser_rx_desc *) (unsigned long) wc.wr_id;
  BUG_ON(desc == ((void*)0));
  ib_conn = wc.qp->qp_context;
  if (wc.status == IB_WC_SUCCESS) {
   if (wc.opcode == IB_WC_RECV) {
    xfer_len = (unsigned long)wc.byte_len;
    iser_rcv_completion(desc, xfer_len, ib_conn);
   } else
    iser_err("expected opcode %d got %d\n",
     IB_WC_RECV, wc.opcode);
  } else {
   if (wc.status != IB_WC_WR_FLUSH_ERR)
    iser_err("rx id %llx status %d vend_err %x\n",
     wc.wr_id, wc.status, wc.vendor_err);
   ib_conn->post_recv_buf_count--;
   iser_handle_comp_error(((void*)0), ib_conn);
  }
  completed_rx++;
  if (!(completed_rx & 63))
   completed_tx += iser_drain_tx_cq(device, cq_index);
 }


 ib_req_notify_cq(cq, IB_CQ_NEXT_COMP);

 completed_tx += iser_drain_tx_cq(device, cq_index);
 iser_dbg("got %d rx %d tx completions\n", completed_rx, completed_tx);
}
