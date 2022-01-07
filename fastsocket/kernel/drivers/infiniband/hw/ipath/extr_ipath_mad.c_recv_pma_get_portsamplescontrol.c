
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipath_ibdev {int pending_lock; int * pma_counter_select; int pma_tag; int pma_sample_interval; int pma_sample_start; int pma_sample_status; TYPE_2__* dd; } ;
struct ipath_cregs {scalar_t__ cr_psstat; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {int port_select; int tick; int counter_width; int * counter_select; int tag; void* sample_interval; void* sample_start; int sample_status; int counter_mask0_9; } ;
struct TYPE_3__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int ipath_link_speed_active; struct ipath_cregs* ipath_cregs; } ;


 int COUNTER_MASK0_9 ;
 int IB_SMP_INVALID_FIELD ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int ipath_read_creg32 (TYPE_2__*,scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_smp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_pma_get_portsamplescontrol(struct ib_pma_mad *pmp,
        struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portsamplescontrol *p =
  (struct ib_pma_portsamplescontrol *)pmp->data;
 struct ipath_ibdev *dev = to_idev(ibdev);
 struct ipath_cregs const *crp = dev->dd->ipath_cregs;
 unsigned long flags;
 u8 port_select = p->port_select;

 memset(pmp->data, 0, sizeof(pmp->data));

 p->port_select = port_select;
 if (pmp->mad_hdr.attr_mod != 0 ||
     (port_select != port && port_select != 0xFF))
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
 if (crp->cr_psstat)
  p->tick = dev->dd->ipath_link_speed_active - 1;
 else
  p->tick = 250;
 p->counter_width = 4;
 p->counter_mask0_9 = COUNTER_MASK0_9;
 spin_lock_irqsave(&dev->pending_lock, flags);
 if (crp->cr_psstat)
  p->sample_status = ipath_read_creg32(dev->dd, crp->cr_psstat);
 else
  p->sample_status = dev->pma_sample_status;
 p->sample_start = cpu_to_be32(dev->pma_sample_start);
 p->sample_interval = cpu_to_be32(dev->pma_sample_interval);
 p->tag = cpu_to_be16(dev->pma_tag);
 p->counter_select[0] = dev->pma_counter_select[0];
 p->counter_select[1] = dev->pma_counter_select[1];
 p->counter_select[2] = dev->pma_counter_select[2];
 p->counter_select[3] = dev->pma_counter_select[3];
 p->counter_select[4] = dev->pma_counter_select[4];
 spin_unlock_irqrestore(&dev->pending_lock, flags);

 return reply((struct ib_smp *) pmp);
}
