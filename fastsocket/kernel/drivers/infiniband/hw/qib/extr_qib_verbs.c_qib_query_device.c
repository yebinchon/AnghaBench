
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; } ;
struct qib_ibdev {TYPE_1__ lk_table; } ;
struct qib_devdata {int minrev; int deviceid; } ;
struct ib_device_attr {int device_cap_flags; int vendor_id; unsigned long long max_mr_size; int max_map_per_fmr; int max_qp_init_rd_atom; int max_mcast_grp; int max_mcast_qp_attach; int max_total_mcast_qp_attach; int max_pkeys; int atomic_cap; int max_srq_sge; int max_srq_wr; int max_srq; int max_qp_rd_atom; int max_pd; int max_fmr; int max_mr; int max_cqe; int max_ah; int max_cq; int max_sge; int max_qp_wr; int max_qp; int sys_image_guid; int hw_ver; int vendor_part_id; int page_size_cap; } ;
struct ib_device {int dummy; } ;


 int IB_ATOMIC_GLOB ;
 int IB_DEVICE_BAD_PKEY_CNTR ;
 int IB_DEVICE_BAD_QKEY_CNTR ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int IB_DEVICE_SHUTDOWN_PORT ;
 int IB_DEVICE_SRQ_RESIZE ;
 int IB_DEVICE_SYS_IMAGE_GUID ;
 int PAGE_SIZE ;
 int QIB_MAX_RDMA_ATOMIC ;
 int QIB_SRC_OUI_1 ;
 int QIB_SRC_OUI_2 ;
 int QIB_SRC_OUI_3 ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int ib_qib_max_ahs ;
 int ib_qib_max_cqes ;
 int ib_qib_max_cqs ;
 int ib_qib_max_mcast_grps ;
 int ib_qib_max_mcast_qp_attached ;
 int ib_qib_max_pds ;
 int ib_qib_max_qp_wrs ;
 int ib_qib_max_qps ;
 int ib_qib_max_sges ;
 int ib_qib_max_srq_sges ;
 int ib_qib_max_srq_wrs ;
 int ib_qib_max_srqs ;
 int ib_qib_sys_image_guid ;
 int memset (struct ib_device_attr*,int ,int) ;
 int qib_get_npkeys (struct qib_devdata*) ;
 struct qib_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int qib_query_device(struct ib_device *ibdev,
       struct ib_device_attr *props)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 struct qib_ibdev *dev = to_idev(ibdev);

 memset(props, 0, sizeof(*props));

 props->device_cap_flags = IB_DEVICE_BAD_PKEY_CNTR |
  IB_DEVICE_BAD_QKEY_CNTR | IB_DEVICE_SHUTDOWN_PORT |
  IB_DEVICE_SYS_IMAGE_GUID | IB_DEVICE_RC_RNR_NAK_GEN |
  IB_DEVICE_PORT_ACTIVE_EVENT | IB_DEVICE_SRQ_RESIZE;
 props->page_size_cap = PAGE_SIZE;
 props->vendor_id =
  QIB_SRC_OUI_1 << 16 | QIB_SRC_OUI_2 << 8 | QIB_SRC_OUI_3;
 props->vendor_part_id = dd->deviceid;
 props->hw_ver = dd->minrev;
 props->sys_image_guid = ib_qib_sys_image_guid;
 props->max_mr_size = ~0ULL;
 props->max_qp = ib_qib_max_qps;
 props->max_qp_wr = ib_qib_max_qp_wrs;
 props->max_sge = ib_qib_max_sges;
 props->max_cq = ib_qib_max_cqs;
 props->max_ah = ib_qib_max_ahs;
 props->max_cqe = ib_qib_max_cqes;
 props->max_mr = dev->lk_table.max;
 props->max_fmr = dev->lk_table.max;
 props->max_map_per_fmr = 32767;
 props->max_pd = ib_qib_max_pds;
 props->max_qp_rd_atom = QIB_MAX_RDMA_ATOMIC;
 props->max_qp_init_rd_atom = 255;

 props->max_srq = ib_qib_max_srqs;
 props->max_srq_wr = ib_qib_max_srq_wrs;
 props->max_srq_sge = ib_qib_max_srq_sges;

 props->atomic_cap = IB_ATOMIC_GLOB;
 props->max_pkeys = qib_get_npkeys(dd);
 props->max_mcast_grp = ib_qib_max_mcast_grps;
 props->max_mcast_qp_attach = ib_qib_max_mcast_qp_attached;
 props->max_total_mcast_qp_attach = props->max_mcast_qp_attach *
  props->max_mcast_grp;

 return 0;
}
