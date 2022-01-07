
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qib_pportdata {int dummy; } ;
struct qib_ibport {int lock; int * pma_counter_select; int pma_tag; int pma_sample_interval; int pma_sample_start; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {int (* f_portcntr ) (struct qib_pportdata*,int ) ;int (* f_get_ib_cfg ) (struct qib_pportdata*,int ) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {scalar_t__ port_select; int counter_width; int * counter_select; int tag; void* sample_interval; void* sample_start; int counter_mask0_9; int sample_status; int tick; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;


 int COUNTER_MASK0_9 ;
 int IB_SMP_INVALID_FIELD ;
 int QIBPORTCNTR_PSSTAT ;
 int QIB_IB_CFG_PMA_TICKS ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 struct qib_devdata* dd_from_dev (struct qib_ibdev*) ;
 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ) ;
 struct qib_ibdev* to_idev (struct ib_device*) ;
 struct qib_ibport* to_iport (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int pma_get_portsamplescontrol(struct ib_pma_mad *pmp,
          struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portsamplescontrol *p =
  (struct ib_pma_portsamplescontrol *)pmp->data;
 struct qib_ibdev *dev = to_idev(ibdev);
 struct qib_devdata *dd = dd_from_dev(dev);
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 unsigned long flags;
 u8 port_select = p->port_select;

 memset(pmp->data, 0, sizeof(pmp->data));

 p->port_select = port_select;
 if (pmp->mad_hdr.attr_mod != 0 || port_select != port) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  goto bail;
 }
 spin_lock_irqsave(&ibp->lock, flags);
 p->tick = dd->f_get_ib_cfg(ppd, QIB_IB_CFG_PMA_TICKS);
 p->sample_status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
 p->counter_width = 4;
 p->counter_mask0_9 = COUNTER_MASK0_9;
 p->sample_start = cpu_to_be32(ibp->pma_sample_start);
 p->sample_interval = cpu_to_be32(ibp->pma_sample_interval);
 p->tag = cpu_to_be16(ibp->pma_tag);
 p->counter_select[0] = ibp->pma_counter_select[0];
 p->counter_select[1] = ibp->pma_counter_select[1];
 p->counter_select[2] = ibp->pma_counter_select[2];
 p->counter_select[3] = ibp->pma_counter_select[3];
 p->counter_select[4] = ibp->pma_counter_select[4];
 spin_unlock_irqrestore(&ibp->lock, flags);

bail:
 return reply((struct ib_smp *) pmp);
}
