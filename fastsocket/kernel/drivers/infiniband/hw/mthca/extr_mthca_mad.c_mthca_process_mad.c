
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ib_wc {scalar_t__ slid; } ;
struct ib_port_attr {scalar_t__ lid; } ;
struct TYPE_2__ {scalar_t__ method; scalar_t__ mgmt_class; int attr_id; int status; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int EBADMSG ;
 int IB_LID_PERMISSIVE ;
 int IB_MAD_IGNORE_BKEY ;
 int IB_MAD_IGNORE_MKEY ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_FAILURE ;
 int IB_MAD_RESULT_REPLY ;
 int IB_MAD_RESULT_SUCCESS ;
 scalar_t__ IB_MGMT_CLASS_PERF_MGMT ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 scalar_t__ IB_MGMT_METHOD_GET ;
 scalar_t__ IB_MGMT_METHOD_SET ;
 scalar_t__ IB_MGMT_METHOD_TRAP ;
 scalar_t__ IB_MGMT_METHOD_TRAP_REPRESS ;
 int IB_SMP_ATTR_PORT_INFO ;
 int IB_SMP_ATTR_SM_INFO ;
 int IB_SMP_ATTR_VENDOR_MASK ;
 scalar_t__ MTHCA_VENDOR_CLASS1 ;
 scalar_t__ MTHCA_VENDOR_CLASS2 ;
 scalar_t__ be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int forward_trap (int ,int ,struct ib_mad*) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mthca_MAD_IFC (int ,int,int,int ,struct ib_wc*,struct ib_grh*,struct ib_mad*,struct ib_mad*) ;
 int mthca_err (int ,char*,int) ;
 int node_desc_override (struct ib_device*,struct ib_mad*) ;
 int smp_snoop (struct ib_device*,int ,struct ib_mad*,scalar_t__) ;
 int to_mdev (struct ib_device*) ;

int mthca_process_mad(struct ib_device *ibdev,
        int mad_flags,
        u8 port_num,
        struct ib_wc *in_wc,
        struct ib_grh *in_grh,
        struct ib_mad *in_mad,
        struct ib_mad *out_mad)
{
 int err;
 u16 slid = in_wc ? in_wc->slid : be16_to_cpu(IB_LID_PERMISSIVE);
 u16 prev_lid = 0;
 struct ib_port_attr pattr;


 if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP &&
     slid == 0) {
  forward_trap(to_mdev(ibdev), port_num, in_mad);
  return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
 }







 if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
     in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) {
  if (in_mad->mad_hdr.method != IB_MGMT_METHOD_GET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_SET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_TRAP_REPRESS)
   return IB_MAD_RESULT_SUCCESS;





  if (in_mad->mad_hdr.attr_id == IB_SMP_ATTR_SM_INFO ||
      ((in_mad->mad_hdr.attr_id & IB_SMP_ATTR_VENDOR_MASK) ==
       IB_SMP_ATTR_VENDOR_MASK))
   return IB_MAD_RESULT_SUCCESS;
 } else if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_PERF_MGMT ||
     in_mad->mad_hdr.mgmt_class == MTHCA_VENDOR_CLASS1 ||
     in_mad->mad_hdr.mgmt_class == MTHCA_VENDOR_CLASS2) {
  if (in_mad->mad_hdr.method != IB_MGMT_METHOD_GET &&
      in_mad->mad_hdr.method != IB_MGMT_METHOD_SET)
   return IB_MAD_RESULT_SUCCESS;
 } else
  return IB_MAD_RESULT_SUCCESS;
 if ((in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
      in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
     in_mad->mad_hdr.method == IB_MGMT_METHOD_SET &&
     in_mad->mad_hdr.attr_id == IB_SMP_ATTR_PORT_INFO &&
     !ib_query_port(ibdev, port_num, &pattr))
  prev_lid = pattr.lid;

 err = mthca_MAD_IFC(to_mdev(ibdev),
       mad_flags & IB_MAD_IGNORE_MKEY,
       mad_flags & IB_MAD_IGNORE_BKEY,
       port_num, in_wc, in_grh, in_mad, out_mad);
 if (err == -EBADMSG)
  return IB_MAD_RESULT_SUCCESS;
 else if (err) {
  mthca_err(to_mdev(ibdev), "MAD_IFC returned %d\n", err);
  return IB_MAD_RESULT_FAILURE;
 }

 if (!out_mad->mad_hdr.status) {
  smp_snoop(ibdev, port_num, in_mad, prev_lid);
  node_desc_override(ibdev, out_mad);
 }


 if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
  out_mad->mad_hdr.status |= cpu_to_be16(1 << 15);

 if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP_REPRESS)

  return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;

 return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}
