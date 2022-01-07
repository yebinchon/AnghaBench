
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_6__ {int rq_size; int rq_head; int rq_tail; int qp_id; struct nes_hw_qp_wqe* rq_vbase; } ;
struct nes_qp {scalar_t__ ibqp_state; int lock; TYPE_3__ hwqp; scalar_t__ term_flags; } ;
struct nes_hw_qp_wqe {int wqe_words; } ;
struct nes_device {scalar_t__ regs; TYPE_1__* nesadapter; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; TYPE_2__* sg_list; scalar_t__ wr_id; } ;
struct ib_qp {int device; } ;
struct TYPE_5__ {int length; int lkey; scalar_t__ addr; } ;
struct TYPE_4__ {int max_sge; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IB_QPS_RTS ;
 int NES_DBG_IW_RX ;
 scalar_t__ NES_IWARP_RQ_WQE_FRAG0_LOW_IDX ;
 scalar_t__ NES_IWARP_RQ_WQE_LENGTH0_IDX ;
 scalar_t__ NES_IWARP_RQ_WQE_STAG0_IDX ;
 scalar_t__ NES_IWARP_RQ_WQE_TOTAL_PAYLOAD_IDX ;
 scalar_t__ NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX ;
 scalar_t__ NES_WQE_ALLOC ;
 int barrier () ;
 int min (int,int) ;
 int nes_debug (int ,char*,int) ;
 int nes_fill_init_qp_wqe (struct nes_hw_qp_wqe*,struct nes_qp*,int) ;
 int nes_write32 (scalar_t__,int) ;
 int set_wqe_32bit_value (int ,scalar_t__,int) ;
 int set_wqe_64bit_value (int ,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct nes_qp* to_nesqp (struct ib_qp*) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static int nes_post_recv(struct ib_qp *ibqp, struct ib_recv_wr *ib_wr,
  struct ib_recv_wr **bad_wr)
{
 u64 u64temp;
 unsigned long flags = 0;
 struct nes_vnic *nesvnic = to_nesvnic(ibqp->device);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_qp *nesqp = to_nesqp(ibqp);
 struct nes_hw_qp_wqe *wqe;
 int err = 0;
 int sge_index;
 u32 qsize = nesqp->hwqp.rq_size;
 u32 head;
 u32 wqe_count = 0;
 u32 counter;
 u32 total_payload_length;

 if (nesqp->ibqp_state > IB_QPS_RTS) {
  err = -EINVAL;
  goto out;
 }

 spin_lock_irqsave(&nesqp->lock, flags);

 head = nesqp->hwqp.rq_head;

 while (ib_wr) {

  if (nesqp->term_flags) {
   err = -EINVAL;
   break;
  }

  if (ib_wr->num_sge > nesdev->nesadapter->max_sge) {
   err = -EINVAL;
   break;
  }

  if (((head + (2 * qsize) - nesqp->hwqp.rq_tail) % qsize) == (qsize - 1)) {
   err = -ENOMEM;
   break;
  }

  nes_debug(NES_DBG_IW_RX, "ibwr sge count = %u.\n", ib_wr->num_sge);
  wqe = &nesqp->hwqp.rq_vbase[head];



  nes_fill_init_qp_wqe(wqe, nesqp, head);
  u64temp = (u64)(ib_wr->wr_id);
  set_wqe_64bit_value(wqe->wqe_words, NES_IWARP_SQ_WQE_COMP_SCRATCH_LOW_IDX,
     u64temp);
  total_payload_length = 0;
  for (sge_index=0; sge_index < ib_wr->num_sge; sge_index++) {
   set_wqe_64bit_value(wqe->wqe_words, NES_IWARP_RQ_WQE_FRAG0_LOW_IDX+(sge_index*4),
     ib_wr->sg_list[sge_index].addr);
   set_wqe_32bit_value(wqe->wqe_words, NES_IWARP_RQ_WQE_LENGTH0_IDX+(sge_index*4),
     ib_wr->sg_list[sge_index].length);
   set_wqe_32bit_value(wqe->wqe_words,NES_IWARP_RQ_WQE_STAG0_IDX+(sge_index*4),
     ib_wr->sg_list[sge_index].lkey);

   total_payload_length += ib_wr->sg_list[sge_index].length;
  }
  set_wqe_32bit_value(wqe->wqe_words, NES_IWARP_RQ_WQE_TOTAL_PAYLOAD_IDX,
     total_payload_length);

  ib_wr = ib_wr->next;
  head++;
  wqe_count++;
  if (head >= qsize)
   head = 0;
 }

 nesqp->hwqp.rq_head = head;
 barrier();
 while (wqe_count) {
  counter = min(wqe_count, ((u32)255));
  wqe_count -= counter;
  nes_write32(nesdev->regs+NES_WQE_ALLOC, (counter<<24) | nesqp->hwqp.qp_id);
 }

 spin_unlock_irqrestore(&nesqp->lock, flags);

out:
 if (err)
  *bad_wr = ib_wr;
 return err;
}
