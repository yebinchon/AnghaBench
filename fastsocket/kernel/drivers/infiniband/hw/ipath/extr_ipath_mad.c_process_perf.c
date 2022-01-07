
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_smp {int dummy; } ;
struct TYPE_2__ {int class_version; int method; int status; int attr_id; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; } ;
struct ib_mad {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MAD_RESULT_SUCCESS ;
 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;
 int recv_pma_get_classportinfo (struct ib_pma_mad*) ;
 int recv_pma_get_portcounters (struct ib_pma_mad*,struct ib_device*,int ) ;
 int recv_pma_get_portcounters_ext (struct ib_pma_mad*,struct ib_device*,int ) ;
 int recv_pma_get_portsamplescontrol (struct ib_pma_mad*,struct ib_device*,int ) ;
 int recv_pma_get_portsamplesresult (struct ib_pma_mad*,struct ib_device*) ;
 int recv_pma_get_portsamplesresult_ext (struct ib_pma_mad*,struct ib_device*) ;
 int recv_pma_set_portcounters (struct ib_pma_mad*,struct ib_device*,int ) ;
 int recv_pma_set_portcounters_ext (struct ib_pma_mad*,struct ib_device*,int ) ;
 int recv_pma_set_portsamplescontrol (struct ib_pma_mad*,struct ib_device*,int ) ;
 int reply (struct ib_smp*) ;

__attribute__((used)) static int process_perf(struct ib_device *ibdev, u8 port_num,
   struct ib_mad *in_mad,
   struct ib_mad *out_mad)
{
 struct ib_pma_mad *pmp = (struct ib_pma_mad *)out_mad;
 int ret;

 *out_mad = *in_mad;
 if (pmp->mad_hdr.class_version != 1) {
  pmp->mad_hdr.status |= IB_SMP_UNSUP_VERSION;
  ret = reply((struct ib_smp *) pmp);
  goto bail;
 }

 switch (pmp->mad_hdr.method) {
 case 136:
  switch (pmp->mad_hdr.attr_id) {
  case 133:
   ret = recv_pma_get_classportinfo(pmp);
   goto bail;
  case 130:
   ret = recv_pma_get_portsamplescontrol(pmp, ibdev,
             port_num);
   goto bail;
  case 129:
   ret = recv_pma_get_portsamplesresult(pmp, ibdev);
   goto bail;
  case 128:
   ret = recv_pma_get_portsamplesresult_ext(pmp,
         ibdev);
   goto bail;
  case 132:
   ret = recv_pma_get_portcounters(pmp, ibdev,
       port_num);
   goto bail;
  case 131:
   ret = recv_pma_get_portcounters_ext(pmp, ibdev,
           port_num);
   goto bail;
  default:
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_smp *) pmp);
   goto bail;
  }

 case 134:
  switch (pmp->mad_hdr.attr_id) {
  case 130:
   ret = recv_pma_set_portsamplescontrol(pmp, ibdev,
             port_num);
   goto bail;
  case 132:
   ret = recv_pma_set_portcounters(pmp, ibdev,
       port_num);
   goto bail;
  case 131:
   ret = recv_pma_set_portcounters_ext(pmp, ibdev,
           port_num);
   goto bail;
  default:
   pmp->mad_hdr.status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply((struct ib_smp *) pmp);
   goto bail;
  }

 case 135:





  ret = IB_MAD_RESULT_SUCCESS;
  goto bail;
 default:
  pmp->mad_hdr.status |= IB_SMP_UNSUP_METHOD;
  ret = reply((struct ib_smp *) pmp);
 }

bail:
 return ret;
}
