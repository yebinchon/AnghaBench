
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ipath_ibdev {scalar_t__ pma_sample_status; int pending_lock; void* pma_sample_start; TYPE_2__* dd; void* pma_sample_interval; int * pma_counter_select; int pma_tag; } ;
struct ipath_cregs {int cr_psstart; int cr_psinterval; scalar_t__ cr_psstat; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {scalar_t__ port_select; int * counter_select; int tag; int sample_interval; int sample_start; } ;
struct TYPE_4__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {struct ipath_cregs* ipath_cregs; } ;


 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ;
 scalar_t__ IB_PMA_SAMPLE_STATUS_STARTED ;
 int IB_SMP_INVALID_FIELD ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ ipath_read_creg32 (TYPE_2__*,scalar_t__) ;
 int ipath_write_creg (TYPE_2__*,int ,void*) ;
 int recv_pma_get_portsamplescontrol (struct ib_pma_mad*,struct ib_device*,scalar_t__) ;
 int reply (struct ib_smp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_pma_set_portsamplescontrol(struct ib_pma_mad *pmp,
        struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portsamplescontrol *p =
  (struct ib_pma_portsamplescontrol *)pmp->data;
 struct ipath_ibdev *dev = to_idev(ibdev);
 struct ipath_cregs const *crp = dev->dd->ipath_cregs;
 unsigned long flags;
 u8 status;
 int ret;

 if (pmp->mad_hdr.attr_mod != 0 ||
     (p->port_select != port && p->port_select != 0xFF)) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  ret = reply((struct ib_smp *) pmp);
  goto bail;
 }

 spin_lock_irqsave(&dev->pending_lock, flags);
 if (crp->cr_psstat)
  status = ipath_read_creg32(dev->dd, crp->cr_psstat);
 else
  status = dev->pma_sample_status;
 if (status == IB_PMA_SAMPLE_STATUS_DONE) {
  dev->pma_sample_start = be32_to_cpu(p->sample_start);
  dev->pma_sample_interval = be32_to_cpu(p->sample_interval);
  dev->pma_tag = be16_to_cpu(p->tag);
  dev->pma_counter_select[0] = p->counter_select[0];
  dev->pma_counter_select[1] = p->counter_select[1];
  dev->pma_counter_select[2] = p->counter_select[2];
  dev->pma_counter_select[3] = p->counter_select[3];
  dev->pma_counter_select[4] = p->counter_select[4];
  if (crp->cr_psstat) {
   ipath_write_creg(dev->dd, crp->cr_psinterval,
      dev->pma_sample_interval);
   ipath_write_creg(dev->dd, crp->cr_psstart,
      dev->pma_sample_start);
  } else
   dev->pma_sample_status = IB_PMA_SAMPLE_STATUS_STARTED;
 }
 spin_unlock_irqrestore(&dev->pending_lock, flags);

 ret = recv_pma_get_portsamplescontrol(pmp, ibdev, port);

bail:
 return ret;
}
