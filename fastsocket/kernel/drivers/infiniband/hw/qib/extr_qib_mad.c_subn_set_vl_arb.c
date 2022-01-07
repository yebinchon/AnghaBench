
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qib_pportdata {scalar_t__ vls_supported; TYPE_1__* dd; } ;
struct ib_smp {int status; int data; int attr_mod; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int (* f_set_ib_table ) (struct qib_pportdata*,int ,int ) ;} ;


 int IB_SMP_INVALID_FIELD ;
 int IB_SMP_UNSUP_METHOD ;
 unsigned int IB_VLARB_HIGHPRI_0_31 ;
 unsigned int IB_VLARB_LOWPRI_0_31 ;
 scalar_t__ IB_VL_VL0 ;
 int QIB_IB_TBL_VL_HIGH_ARB ;
 int QIB_IB_TBL_VL_LOW_ARB ;
 int be32_to_cpu (int ) ;
 struct qib_pportdata* ppd_from_ibp (int ) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;
 int stub2 (struct qib_pportdata*,int ,int ) ;
 int subn_get_vl_arb (struct ib_smp*,struct ib_device*,int ) ;
 int to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int subn_set_vl_arb(struct ib_smp *smp, struct ib_device *ibdev,
      u8 port)
{
 unsigned which = be32_to_cpu(smp->attr_mod) >> 16;
 struct qib_pportdata *ppd = ppd_from_ibp(to_iport(ibdev, port));

 if (ppd->vls_supported == IB_VL_VL0)
  smp->status |= IB_SMP_UNSUP_METHOD;
 else if (which == IB_VLARB_LOWPRI_0_31)
  (void) ppd->dd->f_set_ib_table(ppd, QIB_IB_TBL_VL_LOW_ARB,
         smp->data);
 else if (which == IB_VLARB_HIGHPRI_0_31)
  (void) ppd->dd->f_set_ib_table(ppd, QIB_IB_TBL_VL_HIGH_ARB,
         smp->data);
 else
  smp->status |= IB_SMP_INVALID_FIELD;

 return subn_get_vl_arb(smp, ibdev, port);
}
