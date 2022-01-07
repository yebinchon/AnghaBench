
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int uverbs_abi_ver; unsigned long long uverbs_cmd_mask; int num_comp_vectors; int post_srq_recv; int destroy_srq; int query_srq; int modify_srq; int create_srq; int * dma_ops; int mmap; int process_mad; int detach_mcast; int attach_mcast; int dealloc_fmr; int unmap_fmr; int map_phys_fmr; int alloc_fmr; int dealloc_mw; int bind_mw; int alloc_mw; int rereg_phys_mr; int dereg_mr; int query_mr; int reg_user_mr; int reg_phys_mr; int get_dma_mr; int req_notify_cq; int poll_cq; int resize_cq; int destroy_cq; int create_cq; int post_recv; int post_send; int destroy_qp; int query_qp; int modify_qp; int create_qp; int destroy_ah; int query_ah; int create_ah; int dealloc_pd; int alloc_pd; int dealloc_ucontext; int alloc_ucontext; int modify_port; int query_pkey; int query_gid; int query_port; int query_device; int * dma_device; int phys_port_cnt; int node_type; int owner; int name; } ;
struct ehca_shca {TYPE_2__ ib_device; int hca_cap; TYPE_1__* ofdev; int num_ports; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ EHCA_BMASK_GET (int ,int ) ;
 int HCA_CAP_SRQ ;
 int IB_DEVICE_NAME_MAX ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ;
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ;
 unsigned long long IB_USER_VERBS_CMD_REG_MR ;
 int RDMA_NODE_IB_CA ;
 int THIS_MODULE ;
 int ehca_alloc_fmr ;
 int ehca_alloc_mw ;
 int ehca_alloc_pd ;
 int ehca_alloc_ucontext ;
 int ehca_attach_mcast ;
 int ehca_bind_mw ;
 int ehca_create_ah ;
 int ehca_create_cq ;
 int ehca_create_qp ;
 int ehca_create_srq ;
 int ehca_dealloc_fmr ;
 int ehca_dealloc_mw ;
 int ehca_dealloc_pd ;
 int ehca_dealloc_ucontext ;
 int ehca_dereg_mr ;
 int ehca_destroy_ah ;
 int ehca_destroy_cq ;
 int ehca_destroy_qp ;
 int ehca_destroy_srq ;
 int ehca_detach_mcast ;
 int ehca_dma_mapping_ops ;
 int ehca_get_dma_mr ;
 int ehca_map_phys_fmr ;
 int ehca_mmap ;
 int ehca_modify_port ;
 int ehca_modify_qp ;
 int ehca_modify_srq ;
 int ehca_poll_cq ;
 int ehca_post_recv ;
 int ehca_post_send ;
 int ehca_post_srq_recv ;
 int ehca_process_mad ;
 int ehca_query_ah ;
 int ehca_query_device ;
 int ehca_query_gid ;
 int ehca_query_mr ;
 int ehca_query_pkey ;
 int ehca_query_port ;
 int ehca_query_qp ;
 int ehca_query_srq ;
 int ehca_reg_phys_mr ;
 int ehca_reg_user_mr ;
 int ehca_req_notify_cq ;
 int ehca_rereg_phys_mr ;
 int ehca_resize_cq ;
 int ehca_unmap_fmr ;
 int init_node_guid (struct ehca_shca*) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int ehca_init_device(struct ehca_shca *shca)
{
 int ret;

 ret = init_node_guid(shca);
 if (ret)
  return ret;

 strlcpy(shca->ib_device.name, "ehca%d", IB_DEVICE_NAME_MAX);
 shca->ib_device.owner = THIS_MODULE;

 shca->ib_device.uverbs_abi_ver = 8;
 shca->ib_device.uverbs_cmd_mask =
  (1ull << IB_USER_VERBS_CMD_GET_CONTEXT) |
  (1ull << IB_USER_VERBS_CMD_QUERY_DEVICE) |
  (1ull << IB_USER_VERBS_CMD_QUERY_PORT) |
  (1ull << IB_USER_VERBS_CMD_ALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_DEALLOC_PD) |
  (1ull << IB_USER_VERBS_CMD_REG_MR) |
  (1ull << IB_USER_VERBS_CMD_DEREG_MR) |
  (1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
  (1ull << IB_USER_VERBS_CMD_CREATE_CQ) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_CQ) |
  (1ull << IB_USER_VERBS_CMD_CREATE_QP) |
  (1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
  (1ull << IB_USER_VERBS_CMD_QUERY_QP) |
  (1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
  (1ull << IB_USER_VERBS_CMD_ATTACH_MCAST) |
  (1ull << IB_USER_VERBS_CMD_DETACH_MCAST);

 shca->ib_device.node_type = RDMA_NODE_IB_CA;
 shca->ib_device.phys_port_cnt = shca->num_ports;
 shca->ib_device.num_comp_vectors = 1;
 shca->ib_device.dma_device = &shca->ofdev->dev;
 shca->ib_device.query_device = ehca_query_device;
 shca->ib_device.query_port = ehca_query_port;
 shca->ib_device.query_gid = ehca_query_gid;
 shca->ib_device.query_pkey = ehca_query_pkey;

 shca->ib_device.modify_port = ehca_modify_port;
 shca->ib_device.alloc_ucontext = ehca_alloc_ucontext;
 shca->ib_device.dealloc_ucontext = ehca_dealloc_ucontext;
 shca->ib_device.alloc_pd = ehca_alloc_pd;
 shca->ib_device.dealloc_pd = ehca_dealloc_pd;
 shca->ib_device.create_ah = ehca_create_ah;

 shca->ib_device.query_ah = ehca_query_ah;
 shca->ib_device.destroy_ah = ehca_destroy_ah;
 shca->ib_device.create_qp = ehca_create_qp;
 shca->ib_device.modify_qp = ehca_modify_qp;
 shca->ib_device.query_qp = ehca_query_qp;
 shca->ib_device.destroy_qp = ehca_destroy_qp;
 shca->ib_device.post_send = ehca_post_send;
 shca->ib_device.post_recv = ehca_post_recv;
 shca->ib_device.create_cq = ehca_create_cq;
 shca->ib_device.destroy_cq = ehca_destroy_cq;
 shca->ib_device.resize_cq = ehca_resize_cq;
 shca->ib_device.poll_cq = ehca_poll_cq;

 shca->ib_device.req_notify_cq = ehca_req_notify_cq;

 shca->ib_device.get_dma_mr = ehca_get_dma_mr;
 shca->ib_device.reg_phys_mr = ehca_reg_phys_mr;
 shca->ib_device.reg_user_mr = ehca_reg_user_mr;
 shca->ib_device.query_mr = ehca_query_mr;
 shca->ib_device.dereg_mr = ehca_dereg_mr;
 shca->ib_device.rereg_phys_mr = ehca_rereg_phys_mr;
 shca->ib_device.alloc_mw = ehca_alloc_mw;
 shca->ib_device.bind_mw = ehca_bind_mw;
 shca->ib_device.dealloc_mw = ehca_dealloc_mw;
 shca->ib_device.alloc_fmr = ehca_alloc_fmr;
 shca->ib_device.map_phys_fmr = ehca_map_phys_fmr;
 shca->ib_device.unmap_fmr = ehca_unmap_fmr;
 shca->ib_device.dealloc_fmr = ehca_dealloc_fmr;
 shca->ib_device.attach_mcast = ehca_attach_mcast;
 shca->ib_device.detach_mcast = ehca_detach_mcast;
 shca->ib_device.process_mad = ehca_process_mad;
 shca->ib_device.mmap = ehca_mmap;
 shca->ib_device.dma_ops = &ehca_dma_mapping_ops;

 if (EHCA_BMASK_GET(HCA_CAP_SRQ, shca->hca_cap)) {
  shca->ib_device.uverbs_cmd_mask |=
   (1ull << IB_USER_VERBS_CMD_CREATE_SRQ) |
   (1ull << IB_USER_VERBS_CMD_MODIFY_SRQ) |
   (1ull << IB_USER_VERBS_CMD_QUERY_SRQ) |
   (1ull << IB_USER_VERBS_CMD_DESTROY_SRQ);

  shca->ib_device.create_srq = ehca_create_srq;
  shca->ib_device.modify_srq = ehca_modify_srq;
  shca->ib_device.query_srq = ehca_query_srq;
  shca->ib_device.destroy_srq = ehca_destroy_srq;
  shca->ib_device.post_srq_recv = ehca_post_srq_recv;
 }

 return ret;
}
