
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_qps; int reserved_qps; int flags; int num_mgms; int num_amgms; scalar_t__ num_mpts; int pkey_table_len; int local_ca_ack_delay; int max_srq_sge; int max_srq_wqes; scalar_t__ reserved_srqs; scalar_t__ num_srqs; int max_qp_init_rdma; scalar_t__ reserved_pds; scalar_t__ num_pds; scalar_t__ reserved_mrws; int max_cqes; scalar_t__ reserved_cqs; scalar_t__ num_cqs; int max_sg; int max_wqes; int page_size_cap; } ;
struct TYPE_3__ {int rdb_shift; } ;
struct mthca_dev {int mthca_flags; TYPE_2__ limits; TYPE_1__ qp_table; int device_cap_flags; int fw_ver; } ;
struct ib_smp {scalar_t__ data; int attr_id; } ;
struct ib_device_attr {int vendor_id; int hw_ver; unsigned long long max_mr_size; int max_qp; int max_qp_rd_atom; int max_res_rd_atom; int max_mcast_grp; int max_mcast_qp_attach; int max_total_mcast_qp_attach; int max_map_per_fmr; int max_pkeys; int atomic_cap; int local_ca_ack_delay; int max_srq_sge; int max_srq_wr; scalar_t__ max_srq; int max_qp_init_rd_atom; scalar_t__ max_pd; scalar_t__ max_mr; int max_cqe; scalar_t__ max_cq; int max_sge; int max_qp_wr; int page_size_cap; int sys_image_guid; int vendor_part_id; int device_cap_flags; int fw_ver; } ;
struct ib_device {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int DEV_LIM_FLAG_ATOMIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_ATOMIC_HCA ;
 int IB_ATOMIC_NONE ;
 int IB_SMP_ATTR_NODE_INFO ;
 int MTHCA_FLAG_SINAI_OPT ;
 int MTHCA_QP_PER_MGM ;
 int be16_to_cpup (int *) ;
 int be32_to_cpup (int *) ;
 int ilog2 (scalar_t__) ;
 int init_query_mad (struct ib_smp*) ;
 int kfree (struct ib_smp*) ;
 struct ib_smp* kmalloc (int,int ) ;
 struct ib_smp* kzalloc (int,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (struct ib_device_attr*,int ,int) ;
 int mthca_MAD_IFC (struct mthca_dev*,int,int,int,int *,int *,struct ib_smp*,struct ib_smp*) ;
 struct mthca_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mthca_query_device(struct ib_device *ibdev,
         struct ib_device_attr *props)
{
 struct ib_smp *in_mad = ((void*)0);
 struct ib_smp *out_mad = ((void*)0);
 int err = -ENOMEM;
 struct mthca_dev *mdev = to_mdev(ibdev);

 in_mad = kzalloc(sizeof *in_mad, GFP_KERNEL);
 out_mad = kmalloc(sizeof *out_mad, GFP_KERNEL);
 if (!in_mad || !out_mad)
  goto out;

 memset(props, 0, sizeof *props);

 props->fw_ver = mdev->fw_ver;

 init_query_mad(in_mad);
 in_mad->attr_id = IB_SMP_ATTR_NODE_INFO;

 err = mthca_MAD_IFC(mdev, 1, 1,
       1, ((void*)0), ((void*)0), in_mad, out_mad);
 if (err)
  goto out;

 props->device_cap_flags = mdev->device_cap_flags;
 props->vendor_id = be32_to_cpup((__be32 *) (out_mad->data + 36)) &
  0xffffff;
 props->vendor_part_id = be16_to_cpup((__be16 *) (out_mad->data + 30));
 props->hw_ver = be32_to_cpup((__be32 *) (out_mad->data + 32));
 memcpy(&props->sys_image_guid, out_mad->data + 4, 8);

 props->max_mr_size = ~0ull;
 props->page_size_cap = mdev->limits.page_size_cap;
 props->max_qp = mdev->limits.num_qps - mdev->limits.reserved_qps;
 props->max_qp_wr = mdev->limits.max_wqes;
 props->max_sge = mdev->limits.max_sg;
 props->max_cq = mdev->limits.num_cqs - mdev->limits.reserved_cqs;
 props->max_cqe = mdev->limits.max_cqes;
 props->max_mr = mdev->limits.num_mpts - mdev->limits.reserved_mrws;
 props->max_pd = mdev->limits.num_pds - mdev->limits.reserved_pds;
 props->max_qp_rd_atom = 1 << mdev->qp_table.rdb_shift;
 props->max_qp_init_rd_atom = mdev->limits.max_qp_init_rdma;
 props->max_res_rd_atom = props->max_qp_rd_atom * props->max_qp;
 props->max_srq = mdev->limits.num_srqs - mdev->limits.reserved_srqs;
 props->max_srq_wr = mdev->limits.max_srq_wqes;
 props->max_srq_sge = mdev->limits.max_srq_sge;
 props->local_ca_ack_delay = mdev->limits.local_ca_ack_delay;
 props->atomic_cap = mdev->limits.flags & DEV_LIM_FLAG_ATOMIC ?
     IB_ATOMIC_HCA : IB_ATOMIC_NONE;
 props->max_pkeys = mdev->limits.pkey_table_len;
 props->max_mcast_grp = mdev->limits.num_mgms + mdev->limits.num_amgms;
 props->max_mcast_qp_attach = MTHCA_QP_PER_MGM;
 props->max_total_mcast_qp_attach = props->max_mcast_qp_attach *
        props->max_mcast_grp;





 if (mdev->mthca_flags & MTHCA_FLAG_SINAI_OPT)
  props->max_map_per_fmr = 255;
 else
  props->max_map_per_fmr =
   (1 << (32 - ilog2(mdev->limits.num_mpts))) - 1;

 err = 0;
 out:
 kfree(in_mad);
 kfree(out_mad);
 return err;
}
