
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ipath_ibdev {scalar_t__ pma_tag; scalar_t__ pma_sample_status; int * pma_counter_select; TYPE_1__* dd; } ;
struct ipath_cregs {scalar_t__ cr_psstat; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplesresult {int * counter; void* sample_status; void* tag; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ipath_cregs* ipath_cregs; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ;
 void* cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int ) ;
 int get_counter (struct ipath_ibdev*,struct ipath_cregs const*,int ) ;
 scalar_t__ ipath_read_creg32 (TYPE_1__*,scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_smp*) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_pma_get_portsamplesresult(struct ib_pma_mad *pmp,
       struct ib_device *ibdev)
{
 struct ib_pma_portsamplesresult *p =
  (struct ib_pma_portsamplesresult *)pmp->data;
 struct ipath_ibdev *dev = to_idev(ibdev);
 struct ipath_cregs const *crp = dev->dd->ipath_cregs;
 u8 status;
 int i;

 memset(pmp->data, 0, sizeof(pmp->data));
 p->tag = cpu_to_be16(dev->pma_tag);
 if (crp->cr_psstat)
  status = ipath_read_creg32(dev->dd, crp->cr_psstat);
 else
  status = dev->pma_sample_status;
 p->sample_status = cpu_to_be16(status);
 for (i = 0; i < ARRAY_SIZE(dev->pma_counter_select); i++)
  p->counter[i] = (status != IB_PMA_SAMPLE_STATUS_DONE) ? 0 :
      cpu_to_be32(
   get_counter(dev, crp, dev->pma_counter_select[i]));

 return reply((struct ib_smp *) pmp);
}
