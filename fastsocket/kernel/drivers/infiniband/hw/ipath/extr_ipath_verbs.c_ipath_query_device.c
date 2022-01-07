
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; } ;
struct ipath_ibdev {TYPE_2__* dd; TYPE_1__ lk_table; int sys_image_guid; } ;
struct ib_device_attr {int device_cap_flags; int vendor_id; unsigned long long max_mr_size; int max_map_per_fmr; int max_qp_init_rd_atom; int max_mcast_grp; int max_mcast_qp_attach; int max_total_mcast_qp_attach; int max_pkeys; int atomic_cap; int max_srq_sge; int max_srq_wr; int max_srq; int max_qp_rd_atom; int max_pd; int max_fmr; int max_mr; int max_cqe; int max_ah; int max_cq; int max_sge; int max_qp_wr; int max_qp; int sys_image_guid; int hw_ver; int vendor_part_id; int page_size_cap; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int ipath_pcirev; int ipath_deviceid; } ;


 int IB_ATOMIC_GLOB ;
 int IB_DEVICE_BAD_PKEY_CNTR ;
 int IB_DEVICE_BAD_QKEY_CNTR ;
 int IB_DEVICE_PORT_ACTIVE_EVENT ;
 int IB_DEVICE_RC_RNR_NAK_GEN ;
 int IB_DEVICE_SHUTDOWN_PORT ;
 int IB_DEVICE_SRQ_RESIZE ;
 int IB_DEVICE_SYS_IMAGE_GUID ;
 int IPATH_MAX_RDMA_ATOMIC ;
 int IPATH_SRC_OUI_1 ;
 int IPATH_SRC_OUI_2 ;
 int IPATH_SRC_OUI_3 ;
 int PAGE_SIZE ;
 int ib_ipath_max_ahs ;
 int ib_ipath_max_cqes ;
 int ib_ipath_max_cqs ;
 int ib_ipath_max_mcast_grps ;
 int ib_ipath_max_mcast_qp_attached ;
 int ib_ipath_max_pds ;
 int ib_ipath_max_qp_wrs ;
 int ib_ipath_max_qps ;
 int ib_ipath_max_sges ;
 int ib_ipath_max_srq_sges ;
 int ib_ipath_max_srq_wrs ;
 int ib_ipath_max_srqs ;
 int ipath_get_npkeys (TYPE_2__*) ;
 int memset (struct ib_device_attr*,int ,int) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_query_device(struct ib_device *ibdev,
         struct ib_device_attr *props)
{
 struct ipath_ibdev *dev = to_idev(ibdev);

 memset(props, 0, sizeof(*props));

 props->device_cap_flags = IB_DEVICE_BAD_PKEY_CNTR |
  IB_DEVICE_BAD_QKEY_CNTR | IB_DEVICE_SHUTDOWN_PORT |
  IB_DEVICE_SYS_IMAGE_GUID | IB_DEVICE_RC_RNR_NAK_GEN |
  IB_DEVICE_PORT_ACTIVE_EVENT | IB_DEVICE_SRQ_RESIZE;
 props->page_size_cap = PAGE_SIZE;
 props->vendor_id =
  IPATH_SRC_OUI_1 << 16 | IPATH_SRC_OUI_2 << 8 | IPATH_SRC_OUI_3;
 props->vendor_part_id = dev->dd->ipath_deviceid;
 props->hw_ver = dev->dd->ipath_pcirev;

 props->sys_image_guid = dev->sys_image_guid;

 props->max_mr_size = ~0ull;
 props->max_qp = ib_ipath_max_qps;
 props->max_qp_wr = ib_ipath_max_qp_wrs;
 props->max_sge = ib_ipath_max_sges;
 props->max_cq = ib_ipath_max_cqs;
 props->max_ah = ib_ipath_max_ahs;
 props->max_cqe = ib_ipath_max_cqes;
 props->max_mr = dev->lk_table.max;
 props->max_fmr = dev->lk_table.max;
 props->max_map_per_fmr = 32767;
 props->max_pd = ib_ipath_max_pds;
 props->max_qp_rd_atom = IPATH_MAX_RDMA_ATOMIC;
 props->max_qp_init_rd_atom = 255;

 props->max_srq = ib_ipath_max_srqs;
 props->max_srq_wr = ib_ipath_max_srq_wrs;
 props->max_srq_sge = ib_ipath_max_srq_sges;

 props->atomic_cap = IB_ATOMIC_GLOB;
 props->max_pkeys = ipath_get_npkeys(dev->dd);
 props->max_mcast_grp = ib_ipath_max_mcast_grps;
 props->max_mcast_qp_attach = ib_ipath_max_mcast_qp_attached;
 props->max_total_mcast_qp_attach = props->max_mcast_qp_attach *
  props->max_mcast_grp;

 return 0;
}
