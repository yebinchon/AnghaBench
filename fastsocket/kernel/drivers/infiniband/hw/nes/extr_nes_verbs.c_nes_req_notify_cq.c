
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_device {scalar_t__ regs; } ;
struct TYPE_2__ {int cq_number; } ;
struct nes_cq {TYPE_1__ hw_cq; } ;
struct ib_cq {int device; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;


 int EINVAL ;
 int IB_CQ_NEXT_COMP ;
 int IB_CQ_SOLICITED ;
 int IB_CQ_SOLICITED_MASK ;
 scalar_t__ NES_CQE_ALLOC ;
 int NES_CQE_ALLOC_NOTIFY_NEXT ;
 int NES_CQE_ALLOC_NOTIFY_SE ;
 int NES_DBG_CQ ;
 int nes_debug (int ,char*,int ) ;
 int nes_read32 (scalar_t__) ;
 int nes_write32 (scalar_t__,int ) ;
 struct nes_cq* to_nescq (struct ib_cq*) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static int nes_req_notify_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
  {
 struct nes_vnic *nesvnic = to_nesvnic(ibcq->device);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_cq *nescq = to_nescq(ibcq);
 u32 cq_arm;

 nes_debug(NES_DBG_CQ, "Requesting notification for CQ%u.\n",
   nescq->hw_cq.cq_number);

 cq_arm = nescq->hw_cq.cq_number;
 if ((notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_NEXT_COMP)
  cq_arm |= NES_CQE_ALLOC_NOTIFY_NEXT;
 else if ((notify_flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED)
  cq_arm |= NES_CQE_ALLOC_NOTIFY_SE;
 else
  return -EINVAL;

 nes_write32(nesdev->regs+NES_CQE_ALLOC, cq_arm);
 nes_read32(nesdev->regs+NES_CQE_ALLOC);

 return 0;
}
