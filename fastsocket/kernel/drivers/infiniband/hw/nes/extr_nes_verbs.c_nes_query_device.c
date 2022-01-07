
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nes_vnic {TYPE_1__* netdev; struct nes_ib_device* nesibdev; struct nes_device* nesdev; } ;
struct nes_ib_device {int max_pd; int max_mr; int max_cq; int max_qp; } ;
struct nes_device {TYPE_2__* nesadapter; } ;
struct ib_device_attr {int max_mr_size; int max_sge_rd; int max_qp_rd_atom; int max_qp_init_rd_atom; int max_map_per_fmr; int atomic_cap; int max_pd; int max_mw; int max_mr; int max_cqe; int max_cq; int max_sge; scalar_t__ max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int device_cap_flags; int fw_ver; int sys_image_guid; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int max_irrq_wr; int max_cqe; int max_sge; scalar_t__ max_qp_wr; int hw_rev; int vendor_part_id; int vendor_id; int device_cap_flags; int firmware_version; } ;
struct TYPE_3__ {int dev_addr; } ;


 int IB_ATOMIC_NONE ;
 int memcpy (int *,int ,int) ;
 int memset (struct ib_device_attr*,int ,int) ;
 struct nes_vnic* to_nesvnic (struct ib_device*) ;

__attribute__((used)) static int nes_query_device(struct ib_device *ibdev, struct ib_device_attr *props)
{
 struct nes_vnic *nesvnic = to_nesvnic(ibdev);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_ib_device *nesibdev = nesvnic->nesibdev;

 memset(props, 0, sizeof(*props));
 memcpy(&props->sys_image_guid, nesvnic->netdev->dev_addr, 6);

 props->fw_ver = nesdev->nesadapter->firmware_version;
 props->device_cap_flags = nesdev->nesadapter->device_cap_flags;
 props->vendor_id = nesdev->nesadapter->vendor_id;
 props->vendor_part_id = nesdev->nesadapter->vendor_part_id;
 props->hw_ver = nesdev->nesadapter->hw_rev;
 props->max_mr_size = 0x80000000;
 props->max_qp = nesibdev->max_qp;
 props->max_qp_wr = nesdev->nesadapter->max_qp_wr - 2;
 props->max_sge = nesdev->nesadapter->max_sge;
 props->max_cq = nesibdev->max_cq;
 props->max_cqe = nesdev->nesadapter->max_cqe;
 props->max_mr = nesibdev->max_mr;
 props->max_mw = nesibdev->max_mr;
 props->max_pd = nesibdev->max_pd;
 props->max_sge_rd = 1;
 switch (nesdev->nesadapter->max_irrq_wr) {
  case 0:
   props->max_qp_rd_atom = 2;
   break;
  case 1:
   props->max_qp_rd_atom = 8;
   break;
  case 2:
   props->max_qp_rd_atom = 32;
   break;
  case 3:
   props->max_qp_rd_atom = 64;
   break;
  default:
   props->max_qp_rd_atom = 0;
 }
 props->max_qp_init_rd_atom = props->max_qp_rd_atom;
 props->atomic_cap = IB_ATOMIC_NONE;
 props->max_map_per_fmr = 1;

 return 0;
}
