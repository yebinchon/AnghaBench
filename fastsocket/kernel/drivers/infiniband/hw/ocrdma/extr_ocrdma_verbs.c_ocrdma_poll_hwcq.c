
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_qp {int dummy; } ;
struct ocrdma_dev {struct ocrdma_qp** qp_tbl; } ;
struct TYPE_2__ {scalar_t__ qpn; } ;
struct ocrdma_cqe {TYPE_1__ cmn; } ;
struct ocrdma_cq {int getp; int max_hw_cqe; int solicited; int armed; int id; struct ocrdma_cqe* va; struct ocrdma_dev* dev; } ;
struct ib_wc {int dummy; } ;


 int BUG_ON (int ) ;
 int OCRDMA_CQE_QPN_MASK ;
 scalar_t__ is_cqe_for_sq (struct ocrdma_cqe*) ;
 int is_cqe_valid (struct ocrdma_cq*,struct ocrdma_cqe*) ;
 int le32_to_cpu (scalar_t__) ;
 int ocrdma_change_cq_phase (struct ocrdma_cq*,struct ocrdma_cqe*,int) ;
 int ocrdma_poll_rcqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*) ;
 int ocrdma_poll_scqe (struct ocrdma_qp*,struct ocrdma_cqe*,struct ib_wc*,int*,int*) ;
 int ocrdma_ring_cq_db (struct ocrdma_dev*,int ,int ,int ,int) ;

__attribute__((used)) static int ocrdma_poll_hwcq(struct ocrdma_cq *cq, int num_entries,
       struct ib_wc *ibwc)
{
 u16 qpn = 0;
 int i = 0;
 bool expand = 0;
 int polled_hw_cqes = 0;
 struct ocrdma_qp *qp = ((void*)0);
 struct ocrdma_dev *dev = cq->dev;
 struct ocrdma_cqe *cqe;
 u16 cur_getp; bool polled = 0; bool stop = 0;

 cur_getp = cq->getp;
 while (num_entries) {
  cqe = cq->va + cur_getp;

  if (!is_cqe_valid(cq, cqe))
   break;
  qpn = (le32_to_cpu(cqe->cmn.qpn) & OCRDMA_CQE_QPN_MASK);

  if (qpn == 0)
   goto skip_cqe;
  qp = dev->qp_tbl[qpn];
  BUG_ON(qp == ((void*)0));

  if (is_cqe_for_sq(cqe)) {
   expand = ocrdma_poll_scqe(qp, cqe, ibwc, &polled,
        &stop);
  } else {
   expand = ocrdma_poll_rcqe(qp, cqe, ibwc, &polled,
        &stop);
  }
  if (expand)
   goto expand_cqe;
  if (stop)
   goto stop_cqe;

  cqe->cmn.qpn = 0;
skip_cqe:
  polled_hw_cqes += 1;
  cur_getp = (cur_getp + 1) % cq->max_hw_cqe;
  ocrdma_change_cq_phase(cq, cqe, cur_getp);
expand_cqe:
  if (polled) {
   num_entries -= 1;
   i += 1;
   ibwc = ibwc + 1;
   polled = 0;
  }
 }
stop_cqe:
 cq->getp = cur_getp;
 if (polled_hw_cqes || expand || stop) {
  ocrdma_ring_cq_db(dev, cq->id, cq->armed, cq->solicited,
      polled_hw_cqes);
 }
 return i;
}
