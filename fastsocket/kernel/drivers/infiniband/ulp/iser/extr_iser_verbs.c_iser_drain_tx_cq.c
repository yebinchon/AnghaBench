
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_tx_desc {int dummy; } ;
struct iser_device {struct ib_cq** tx_cq; } ;
struct iser_conn {int post_send_buf_count; } ;
struct ib_wc {scalar_t__ status; scalar_t__ opcode; int vendor_err; scalar_t__ wr_id; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {struct iser_conn* qp_context; } ;


 scalar_t__ IB_WC_SEND ;
 scalar_t__ IB_WC_SUCCESS ;
 int atomic_dec (int *) ;
 int ib_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 int iser_err (char*,scalar_t__,scalar_t__,...) ;
 int iser_handle_comp_error (struct iser_tx_desc*,struct iser_conn*) ;
 int iser_snd_completion (struct iser_tx_desc*,struct iser_conn*) ;

__attribute__((used)) static int iser_drain_tx_cq(struct iser_device *device, int cq_index)
{
 struct ib_cq *cq = device->tx_cq[cq_index];
 struct ib_wc wc;
 struct iser_tx_desc *tx_desc;
 struct iser_conn *ib_conn;
 int completed_tx = 0;

 while (ib_poll_cq(cq, 1, &wc) == 1) {
  tx_desc = (struct iser_tx_desc *) (unsigned long) wc.wr_id;
  ib_conn = wc.qp->qp_context;
  if (wc.status == IB_WC_SUCCESS) {
   if (wc.opcode == IB_WC_SEND)
    iser_snd_completion(tx_desc, ib_conn);
   else
    iser_err("expected opcode %d got %d\n",
     IB_WC_SEND, wc.opcode);
  } else {
   iser_err("tx id %llx status %d vend_err %x\n",
    wc.wr_id, wc.status, wc.vendor_err);
   atomic_dec(&ib_conn->post_send_buf_count);
   iser_handle_comp_error(tx_desc, ib_conn);
  }
  completed_tx++;
 }
 return completed_tx;
}
