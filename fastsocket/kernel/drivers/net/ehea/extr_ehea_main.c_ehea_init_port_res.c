
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u64 ;
struct port_res_cfg {int max_entries_rq3; int max_entries_rq2; int max_entries_rq1; int max_entries_sq; int max_entries_scq; int max_entries_rcq; } ;
struct ehea_qp_init_attr {int low_lat_rq1; int signalingtype; int rq_count; int qp_token; int act_nr_send_wqes; int act_nr_rwqes_rq1; int act_nr_rwqes_rq2; int act_nr_rwqes_rq3; int qp_nr; int aff_eq_handle; int recv_cq_handle; int send_cq_handle; int port_nr; int rq3_threshold; int rq2_threshold; int wqe_size_enc_rq3; int wqe_size_enc_rq2; int wqe_size_enc_rq1; int wqe_size_enc_sq; int max_nr_rwqes_rq3; int max_nr_rwqes_rq2; int max_nr_rwqes_rq1; int max_nr_send_wqes; } ;
struct TYPE_9__ {int arr; } ;
struct ehea_port_res {int sq_skba_size; int swqe_refill_th; TYPE_4__* eq; TYPE_5__* recv_cq; TYPE_5__* send_cq; int qp; TYPE_3__ rq3_skba; TYPE_3__ rq2_skba; TYPE_3__ rq1_skba; TYPE_3__ sq_skba; int napi; struct ehea_port* port; int swqe_avail; void* rx_packets; void* rx_bytes; void* tx_packets; void* tx_bytes; } ;
struct ehea_port {int netdev; TYPE_2__* qp_eq; int logical_port_id; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int pd; } ;
typedef enum ehea_eq_type { ____Placeholder_ehea_eq_type } ehea_eq_type ;
struct TYPE_7__ {int act_nr_of_cqes; } ;
struct TYPE_11__ {int fw_handle; TYPE_1__ attr; } ;
struct TYPE_10__ {int fw_handle; } ;
struct TYPE_8__ {int fw_handle; } ;


 int EHEA_EQ ;
 int EHEA_MAX_ENTRIES_EQ ;
 int EHEA_RQ2_THRESHOLD ;
 int EHEA_RQ3_THRESHOLD ;
 int EHEA_SG_RQ1 ;
 int EHEA_SG_RQ2 ;
 int EHEA_SG_RQ3 ;
 int EHEA_SG_SQ ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 void* ehea_create_cq (struct ehea_adapter*,int ,int ,int ) ;
 TYPE_4__* ehea_create_eq (struct ehea_adapter*,int,int ,int ) ;
 int ehea_create_qp (struct ehea_adapter*,int ,struct ehea_qp_init_attr*) ;
 int ehea_destroy_cq (TYPE_5__*) ;
 int ehea_destroy_eq (TYPE_4__*) ;
 int ehea_destroy_qp (int ) ;
 int ehea_error (char*) ;
 scalar_t__ ehea_gen_smrs (struct ehea_port_res*) ;
 int ehea_info (char*,int ,int,...) ;
 int ehea_init_q_skba (TYPE_3__*,int) ;
 int ehea_poll ;
 int kfree (struct ehea_qp_init_attr*) ;
 struct ehea_qp_init_attr* kzalloc (int,int ) ;
 int memset (struct ehea_port_res*,int ,int) ;
 scalar_t__ netif_msg_ifup (struct ehea_port*) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int vfree (int ) ;

__attribute__((used)) static int ehea_init_port_res(struct ehea_port *port, struct ehea_port_res *pr,
         struct port_res_cfg *pr_cfg, int queue_token)
{
 struct ehea_adapter *adapter = port->adapter;
 enum ehea_eq_type eq_type = EHEA_EQ;
 struct ehea_qp_init_attr *init_attr = ((void*)0);
 int ret = -EIO;
 u64 tx_bytes, rx_bytes, tx_packets, rx_packets;

 tx_bytes = pr->tx_bytes;
 tx_packets = pr->tx_packets;
 rx_bytes = pr->rx_bytes;
 rx_packets = pr->rx_packets;

 memset(pr, 0, sizeof(struct ehea_port_res));

 pr->tx_bytes = rx_bytes;
 pr->tx_packets = tx_packets;
 pr->rx_bytes = rx_bytes;
 pr->rx_packets = rx_packets;

 pr->port = port;

 pr->eq = ehea_create_eq(adapter, eq_type, EHEA_MAX_ENTRIES_EQ, 0);
 if (!pr->eq) {
  ehea_error("create_eq failed (eq)");
  goto out_free;
 }

 pr->recv_cq = ehea_create_cq(adapter, pr_cfg->max_entries_rcq,
         pr->eq->fw_handle,
         port->logical_port_id);
 if (!pr->recv_cq) {
  ehea_error("create_cq failed (cq_recv)");
  goto out_free;
 }

 pr->send_cq = ehea_create_cq(adapter, pr_cfg->max_entries_scq,
         pr->eq->fw_handle,
         port->logical_port_id);
 if (!pr->send_cq) {
  ehea_error("create_cq failed (cq_send)");
  goto out_free;
 }

 if (netif_msg_ifup(port))
  ehea_info("Send CQ: act_nr_cqes=%d, Recv CQ: act_nr_cqes=%d",
     pr->send_cq->attr.act_nr_of_cqes,
     pr->recv_cq->attr.act_nr_of_cqes);

 init_attr = kzalloc(sizeof(*init_attr), GFP_KERNEL);
 if (!init_attr) {
  ret = -ENOMEM;
  ehea_error("no mem for ehea_qp_init_attr");
  goto out_free;
 }

 init_attr->low_lat_rq1 = 1;
 init_attr->signalingtype = 1;
 init_attr->rq_count = 3;
 init_attr->qp_token = queue_token;
 init_attr->max_nr_send_wqes = pr_cfg->max_entries_sq;
 init_attr->max_nr_rwqes_rq1 = pr_cfg->max_entries_rq1;
 init_attr->max_nr_rwqes_rq2 = pr_cfg->max_entries_rq2;
 init_attr->max_nr_rwqes_rq3 = pr_cfg->max_entries_rq3;
 init_attr->wqe_size_enc_sq = EHEA_SG_SQ;
 init_attr->wqe_size_enc_rq1 = EHEA_SG_RQ1;
 init_attr->wqe_size_enc_rq2 = EHEA_SG_RQ2;
 init_attr->wqe_size_enc_rq3 = EHEA_SG_RQ3;
 init_attr->rq2_threshold = EHEA_RQ2_THRESHOLD;
 init_attr->rq3_threshold = EHEA_RQ3_THRESHOLD;
 init_attr->port_nr = port->logical_port_id;
 init_attr->send_cq_handle = pr->send_cq->fw_handle;
 init_attr->recv_cq_handle = pr->recv_cq->fw_handle;
 init_attr->aff_eq_handle = port->qp_eq->fw_handle;

 pr->qp = ehea_create_qp(adapter, adapter->pd, init_attr);
 if (!pr->qp) {
  ehea_error("create_qp failed");
  ret = -EIO;
  goto out_free;
 }

 if (netif_msg_ifup(port))
  ehea_info("QP: qp_nr=%d\n act_nr_snd_wqe=%d\n nr_rwqe_rq1=%d\n "
     "nr_rwqe_rq2=%d\n nr_rwqe_rq3=%d", init_attr->qp_nr,
     init_attr->act_nr_send_wqes,
     init_attr->act_nr_rwqes_rq1,
     init_attr->act_nr_rwqes_rq2,
     init_attr->act_nr_rwqes_rq3);

 pr->sq_skba_size = init_attr->act_nr_send_wqes + 1;

 ret = ehea_init_q_skba(&pr->sq_skba, pr->sq_skba_size);
 ret |= ehea_init_q_skba(&pr->rq1_skba, init_attr->act_nr_rwqes_rq1 + 1);
 ret |= ehea_init_q_skba(&pr->rq2_skba, init_attr->act_nr_rwqes_rq2 + 1);
 ret |= ehea_init_q_skba(&pr->rq3_skba, init_attr->act_nr_rwqes_rq3 + 1);
 if (ret)
  goto out_free;

 pr->swqe_refill_th = init_attr->act_nr_send_wqes / 10;
 if (ehea_gen_smrs(pr) != 0) {
  ret = -EIO;
  goto out_free;
 }

 atomic_set(&pr->swqe_avail, init_attr->act_nr_send_wqes - 1);

 kfree(init_attr);

 netif_napi_add(pr->port->netdev, &pr->napi, ehea_poll, 64);

 ret = 0;
 goto out;

out_free:
 kfree(init_attr);
 vfree(pr->sq_skba.arr);
 vfree(pr->rq1_skba.arr);
 vfree(pr->rq2_skba.arr);
 vfree(pr->rq3_skba.arr);
 ehea_destroy_qp(pr->qp);
 ehea_destroy_cq(pr->send_cq);
 ehea_destroy_cq(pr->recv_cq);
 ehea_destroy_eq(pr->eq);
out:
 return ret;
}
