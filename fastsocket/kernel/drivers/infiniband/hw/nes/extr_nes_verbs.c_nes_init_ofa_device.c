
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_8__ {unsigned long long uverbs_cmd_mask; int phys_port_cnt; int num_comp_vectors; TYPE_3__* iwcm; int post_recv; int post_send; int req_notify_cq; int process_mad; int detach_mcast; int attach_mcast; int free_fast_reg_page_list; int alloc_fast_reg_page_list; int alloc_fast_reg_mr; int bind_mw; int dealloc_mw; int alloc_mw; int dereg_mr; int reg_user_mr; int reg_phys_mr; int get_dma_mr; int poll_cq; int destroy_cq; int create_cq; int destroy_qp; int query_qp; int modify_qp; int create_qp; int destroy_ah; int create_ah; int dealloc_pd; int alloc_pd; int mmap; int dealloc_ucontext; int alloc_ucontext; int query_gid; int query_pkey; int query_port; int query_device; TYPE_1__ dev; int * dma_device; int node_guid; int node_type; int owner; int name; } ;
struct nes_ib_device {TYPE_4__ ibdev; } ;
struct nes_device {TYPE_2__* pcidev; } ;
struct TYPE_7__ {int destroy_listen; int create_listen; int reject; int accept; int connect; int get_qp; int rem_ref; int add_ref; } ;
struct TYPE_6__ {int dev; } ;


 int GFP_KERNEL ;
 int IB_DEVICE_NAME_MAX ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_MW ;
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_BIND_MW ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ;
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_MW ;
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ;
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ;
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ;
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ;
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ;
 unsigned long long IB_USER_VERBS_CMD_POLL_CQ ;
 unsigned long long IB_USER_VERBS_CMD_POST_RECV ;
 unsigned long long IB_USER_VERBS_CMD_POST_SEND ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ;
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ;
 unsigned long long IB_USER_VERBS_CMD_REG_MR ;
 unsigned long long IB_USER_VERBS_CMD_REQ_NOTIFY_CQ ;
 int RDMA_NODE_RNIC ;
 int THIS_MODULE ;
 scalar_t__ ib_alloc_device (int) ;
 int ib_dealloc_device (TYPE_4__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int nes_accept ;
 int nes_add_ref ;
 int nes_alloc_fast_reg_mr ;
 int nes_alloc_fast_reg_page_list ;
 int nes_alloc_mw ;
 int nes_alloc_pd ;
 int nes_alloc_ucontext ;
 int nes_bind_mw ;
 int nes_connect ;
 int nes_create_ah ;
 int nes_create_cq ;
 int nes_create_listen ;
 int nes_create_qp ;
 int nes_dealloc_mw ;
 int nes_dealloc_pd ;
 int nes_dealloc_ucontext ;
 int nes_dereg_mr ;
 int nes_destroy_ah ;
 int nes_destroy_cq ;
 int nes_destroy_listen ;
 int nes_destroy_qp ;
 int nes_free_fast_reg_page_list ;
 int nes_get_dma_mr ;
 int nes_get_qp ;
 int nes_mmap ;
 int nes_modify_qp ;
 int nes_multicast_attach ;
 int nes_multicast_detach ;
 int nes_poll_cq ;
 int nes_post_recv ;
 int nes_post_send ;
 int nes_process_mad ;
 int nes_query_device ;
 int nes_query_gid ;
 int nes_query_pkey ;
 int nes_query_port ;
 int nes_query_qp ;
 int nes_reg_phys_mr ;
 int nes_reg_user_mr ;
 int nes_reject ;
 int nes_rem_ref ;
 int nes_req_notify_cq ;
 struct nes_vnic* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int ) ;

struct nes_ib_device *nes_init_ofa_device(struct net_device *netdev)
{
 struct nes_ib_device *nesibdev;
 struct nes_vnic *nesvnic = netdev_priv(netdev);
 struct nes_device *nesdev = nesvnic->nesdev;

 nesibdev = (struct nes_ib_device *)ib_alloc_device(sizeof(struct nes_ib_device));
 if (nesibdev == ((void*)0)) {
  return ((void*)0);
 }
 strlcpy(nesibdev->ibdev.name, "nes%d", IB_DEVICE_NAME_MAX);
 nesibdev->ibdev.owner = THIS_MODULE;

 nesibdev->ibdev.node_type = RDMA_NODE_RNIC;
 memset(&nesibdev->ibdev.node_guid, 0, sizeof(nesibdev->ibdev.node_guid));
 memcpy(&nesibdev->ibdev.node_guid, netdev->dev_addr, 6);

 nesibdev->ibdev.uverbs_cmd_mask =
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
   (1ull << IB_USER_VERBS_CMD_CREATE_AH) |
   (1ull << IB_USER_VERBS_CMD_DESTROY_AH) |
   (1ull << IB_USER_VERBS_CMD_REQ_NOTIFY_CQ) |
   (1ull << IB_USER_VERBS_CMD_CREATE_QP) |
   (1ull << IB_USER_VERBS_CMD_MODIFY_QP) |
   (1ull << IB_USER_VERBS_CMD_POLL_CQ) |
   (1ull << IB_USER_VERBS_CMD_DESTROY_QP) |
   (1ull << IB_USER_VERBS_CMD_ALLOC_MW) |
   (1ull << IB_USER_VERBS_CMD_BIND_MW) |
   (1ull << IB_USER_VERBS_CMD_DEALLOC_MW) |
   (1ull << IB_USER_VERBS_CMD_POST_RECV) |
   (1ull << IB_USER_VERBS_CMD_POST_SEND);

 nesibdev->ibdev.phys_port_cnt = 1;
 nesibdev->ibdev.num_comp_vectors = 1;
 nesibdev->ibdev.dma_device = &nesdev->pcidev->dev;
 nesibdev->ibdev.dev.parent = &nesdev->pcidev->dev;
 nesibdev->ibdev.query_device = nes_query_device;
 nesibdev->ibdev.query_port = nes_query_port;
 nesibdev->ibdev.query_pkey = nes_query_pkey;
 nesibdev->ibdev.query_gid = nes_query_gid;
 nesibdev->ibdev.alloc_ucontext = nes_alloc_ucontext;
 nesibdev->ibdev.dealloc_ucontext = nes_dealloc_ucontext;
 nesibdev->ibdev.mmap = nes_mmap;
 nesibdev->ibdev.alloc_pd = nes_alloc_pd;
 nesibdev->ibdev.dealloc_pd = nes_dealloc_pd;
 nesibdev->ibdev.create_ah = nes_create_ah;
 nesibdev->ibdev.destroy_ah = nes_destroy_ah;
 nesibdev->ibdev.create_qp = nes_create_qp;
 nesibdev->ibdev.modify_qp = nes_modify_qp;
 nesibdev->ibdev.query_qp = nes_query_qp;
 nesibdev->ibdev.destroy_qp = nes_destroy_qp;
 nesibdev->ibdev.create_cq = nes_create_cq;
 nesibdev->ibdev.destroy_cq = nes_destroy_cq;
 nesibdev->ibdev.poll_cq = nes_poll_cq;
 nesibdev->ibdev.get_dma_mr = nes_get_dma_mr;
 nesibdev->ibdev.reg_phys_mr = nes_reg_phys_mr;
 nesibdev->ibdev.reg_user_mr = nes_reg_user_mr;
 nesibdev->ibdev.dereg_mr = nes_dereg_mr;
 nesibdev->ibdev.alloc_mw = nes_alloc_mw;
 nesibdev->ibdev.dealloc_mw = nes_dealloc_mw;
 nesibdev->ibdev.bind_mw = nes_bind_mw;

 nesibdev->ibdev.alloc_fast_reg_mr = nes_alloc_fast_reg_mr;
 nesibdev->ibdev.alloc_fast_reg_page_list = nes_alloc_fast_reg_page_list;
 nesibdev->ibdev.free_fast_reg_page_list = nes_free_fast_reg_page_list;

 nesibdev->ibdev.attach_mcast = nes_multicast_attach;
 nesibdev->ibdev.detach_mcast = nes_multicast_detach;
 nesibdev->ibdev.process_mad = nes_process_mad;

 nesibdev->ibdev.req_notify_cq = nes_req_notify_cq;
 nesibdev->ibdev.post_send = nes_post_send;
 nesibdev->ibdev.post_recv = nes_post_recv;

 nesibdev->ibdev.iwcm = kzalloc(sizeof(*nesibdev->ibdev.iwcm), GFP_KERNEL);
 if (nesibdev->ibdev.iwcm == ((void*)0)) {
  ib_dealloc_device(&nesibdev->ibdev);
  return ((void*)0);
 }
 nesibdev->ibdev.iwcm->add_ref = nes_add_ref;
 nesibdev->ibdev.iwcm->rem_ref = nes_rem_ref;
 nesibdev->ibdev.iwcm->get_qp = nes_get_qp;
 nesibdev->ibdev.iwcm->connect = nes_connect;
 nesibdev->ibdev.iwcm->accept = nes_accept;
 nesibdev->ibdev.iwcm->reject = nes_reject;
 nesibdev->ibdev.iwcm->create_listen = nes_create_listen;
 nesibdev->ibdev.iwcm->destroy_listen = nes_destroy_listen;

 return nesibdev;
}
