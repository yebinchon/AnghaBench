
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {int psxmitwait_supported; } ;
struct ib_smp {int dummy; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct ib_class_port_info {int base_version; int class_version; int* reserved; int resp_time_value; int capability_mask; } ;


 int IB_PMA_CLASS_CAP_EXT_WIDTH ;
 int IB_SMP_INVALID_FIELD ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int memset (scalar_t__,int ,int) ;
 int reply (struct ib_smp*) ;

__attribute__((used)) static int pma_get_classportinfo(struct ib_pma_mad *pmp,
     struct ib_device *ibdev)
{
 struct ib_class_port_info *p =
  (struct ib_class_port_info *)pmp->data;
 struct qib_devdata *dd = dd_from_ibdev(ibdev);

 memset(pmp->data, 0, sizeof(pmp->data));

 if (pmp->mad_hdr.attr_mod != 0)
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;


 p->base_version = 1;
 p->class_version = 1;
 p->capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;




 p->reserved[0] = dd->psxmitwait_supported << 7;



 p->resp_time_value = 18;

 return reply((struct ib_smp *) pmp);
}
