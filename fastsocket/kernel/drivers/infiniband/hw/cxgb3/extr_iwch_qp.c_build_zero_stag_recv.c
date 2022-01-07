
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {void** pbl_addr; TYPE_4__* sgl; scalar_t__* pagesz; void* num_sgle; } ;
union t3_wr {TYPE_5__ recv; } ;
typedef int u32 ;
struct TYPE_15__ {int rq_size_log2; int rq_wptr; TYPE_6__* rq; } ;
struct iwch_qp {TYPE_7__ wq; TYPE_2__* rhp; } ;
struct ib_recv_wr {int num_sge; int wr_id; TYPE_3__* sg_list; } ;
struct TYPE_9__ {int pbl_base; } ;
struct TYPE_16__ {TYPE_1__ rnic_info; } ;
struct TYPE_14__ {int pbl_addr; int wr_id; } ;
struct TYPE_12__ {scalar_t__ to; void* len; scalar_t__ stag; } ;
struct TYPE_11__ {scalar_t__ length; scalar_t__ lkey; int addr; } ;
struct TYPE_10__ {TYPE_8__ rdev; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t Q_PTR2IDX (int ,int ) ;
 int T3_MAX_SGE ;
 scalar_t__ T3_STAG0_MAX_PBE_LEN ;
 scalar_t__ T3_STAG0_PAGE_SHIFT ;
 int T3_STAG0_PBL_SIZE ;
 void* cpu_to_be32 (int) ;
 scalar_t__ cpu_to_be64 (int ) ;
 int cxio_hal_pblpool_alloc (TYPE_8__*,int ) ;

__attribute__((used)) static int build_zero_stag_recv(struct iwch_qp *qhp, union t3_wr *wqe,
    struct ib_recv_wr *wr)
{
 int i;
 u32 pbl_addr;
 u32 pbl_offset;
 pbl_addr = cxio_hal_pblpool_alloc(&qhp->rhp->rdev, T3_STAG0_PBL_SIZE);
 if (!pbl_addr)
  return -ENOMEM;




 pbl_offset = (pbl_addr - qhp->rhp->rdev.rnic_info.pbl_base) >> 3;

 wqe->recv.num_sgle = cpu_to_be32(wr->num_sge);

 for (i = 0; i < wr->num_sge; i++) {
  if (wr->sg_list[i].length > T3_STAG0_MAX_PBE_LEN)
   return -EINVAL;
  wqe->recv.pagesz[i] = T3_STAG0_PAGE_SHIFT;




  if (wr->sg_list[i].lkey != 0)
   return -EINVAL;
  wqe->recv.sgl[i].stag = 0;
  wqe->recv.sgl[i].len = cpu_to_be32(wr->sg_list[i].length);
  wqe->recv.sgl[i].to = cpu_to_be64(wr->sg_list[i].addr);
  wqe->recv.pbl_addr[i] = cpu_to_be32(pbl_offset);
  pbl_offset += 2;
 }
 for (; i < T3_MAX_SGE; i++) {
  wqe->recv.pagesz[i] = 0;
  wqe->recv.sgl[i].stag = 0;
  wqe->recv.sgl[i].len = 0;
  wqe->recv.sgl[i].to = 0;
  wqe->recv.pbl_addr[i] = 0;
 }
 qhp->wq.rq[Q_PTR2IDX(qhp->wq.rq_wptr,
        qhp->wq.rq_size_log2)].wr_id = wr->wr_id;
 qhp->wq.rq[Q_PTR2IDX(qhp->wq.rq_wptr,
        qhp->wq.rq_size_log2)].pbl_addr = pbl_addr;
 return 0;
}
