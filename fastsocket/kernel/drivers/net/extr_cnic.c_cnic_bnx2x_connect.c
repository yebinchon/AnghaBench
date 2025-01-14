
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef size_t u32 ;
struct TYPE_4__ {int ip_addr_lo_lo; int ip_addr_lo_hi; int ip_addr_hi_lo; int ip_addr_hi_hi; } ;
struct TYPE_3__ {int ip_addr_lo_lo; int ip_addr_lo_hi; int ip_addr_hi_lo; int ip_addr_hi_hi; } ;
struct l5cm_conn_addr_params {int pmtu; int remote_tcp_port; int local_tcp_port; TYPE_2__ remote_ip_addr; TYPE_1__ local_ip_addr; int params; int remote_addr_5; int remote_addr_4; int remote_addr_3; int remote_addr_2; int remote_addr_1; int remote_addr_0; } ;
struct l5cm_active_conn_buffer {struct l5cm_conn_addr_params conn_addr_buf; } ;
struct l4_kwq_connect_req3 {int pmtu; } ;
struct l4_kwq_connect_req2 {int dst_ip_v6_2; int dst_ip_v6_3; int dst_ip_v6_4; int src_ip_v6_2; int src_ip_v6_3; int src_ip_v6_4; } ;
struct l4_kwq_connect_req1 {size_t pg_cid; int conn_flags; int tcp_flags; int cid; int dst_port; int src_port; int dst_ip; int src_ip; } ;
struct kwqe {int dummy; } ;
struct cnic_sock {int vlan_id; int * ha; } ;
struct cnic_local {int pfid; struct cnic_context* ctx_tbl; struct cnic_sock* csk_tbl; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int ctx_flags; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_XSTRORM_INTMEM ;
 int CNIC_KWQ16_DATA_SIZE ;
 int CNIC_WR16 (struct cnic_dev*,scalar_t__,int ) ;
 int CTX_FL_OFFLD_START ;
 int EINVAL ;
 int ENOMEM ;
 int ISCSI_CONNECTION_TYPE ;
 int L4_KWQ_CONNECT_REQ1_IP_V6 ;
 int L4_KWQ_CONNECT_REQ1_TIME_STAMP ;
 int L5CM_CONN_ADDR_PARAMS_IP_VERSION ;
 int L5CM_RAMROD_CMD_ID_TCP_CONNECT ;
 scalar_t__ XSTORM_ISCSI_LOCAL_VLAN_OFFSET (int ) ;
 int cnic_bnx2x_set_tcp_timestamp (struct cnic_dev*,int) ;
 struct l5cm_active_conn_buffer* cnic_get_kwqe_16_data (struct cnic_local*,size_t,union l5cm_specific_data*) ;
 int cnic_init_storm_conn_bufs (struct cnic_dev*,struct l4_kwq_connect_req1*,struct l4_kwq_connect_req3*,struct l5cm_active_conn_buffer*) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int ,int ,union l5cm_specific_data*) ;
 int memset (struct l5cm_active_conn_buffer*,int ,int) ;
 int netdev_err (int ,char*) ;
 struct bnx2x* netdev_priv (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int cnic_bnx2x_connect(struct cnic_dev *dev, struct kwqe *wqes[],
         u32 num, int *work)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 struct l4_kwq_connect_req1 *kwqe1 =
  (struct l4_kwq_connect_req1 *) wqes[0];
 struct l4_kwq_connect_req3 *kwqe3;
 struct l5cm_active_conn_buffer *conn_buf;
 struct l5cm_conn_addr_params *conn_addr;
 union l5cm_specific_data l5_data;
 u32 l5_cid = kwqe1->pg_cid;
 struct cnic_sock *csk = &cp->csk_tbl[l5_cid];
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];
 int ret;

 if (num < 2) {
  *work = num;
  return -EINVAL;
 }

 if (kwqe1->conn_flags & L4_KWQ_CONNECT_REQ1_IP_V6)
  *work = 3;
 else
  *work = 2;

 if (num < *work) {
  *work = num;
  return -EINVAL;
 }

 if (sizeof(*conn_buf) > CNIC_KWQ16_DATA_SIZE) {
  netdev_err(dev->netdev, "conn_buf size too big\n");
  return -ENOMEM;
 }
 conn_buf = cnic_get_kwqe_16_data(cp, l5_cid, &l5_data);
 if (!conn_buf)
  return -ENOMEM;

 memset(conn_buf, 0, sizeof(*conn_buf));

 conn_addr = &conn_buf->conn_addr_buf;
 conn_addr->remote_addr_0 = csk->ha[0];
 conn_addr->remote_addr_1 = csk->ha[1];
 conn_addr->remote_addr_2 = csk->ha[2];
 conn_addr->remote_addr_3 = csk->ha[3];
 conn_addr->remote_addr_4 = csk->ha[4];
 conn_addr->remote_addr_5 = csk->ha[5];

 if (kwqe1->conn_flags & L4_KWQ_CONNECT_REQ1_IP_V6) {
  struct l4_kwq_connect_req2 *kwqe2 =
   (struct l4_kwq_connect_req2 *) wqes[1];

  conn_addr->local_ip_addr.ip_addr_hi_hi = kwqe2->src_ip_v6_4;
  conn_addr->local_ip_addr.ip_addr_hi_lo = kwqe2->src_ip_v6_3;
  conn_addr->local_ip_addr.ip_addr_lo_hi = kwqe2->src_ip_v6_2;

  conn_addr->remote_ip_addr.ip_addr_hi_hi = kwqe2->dst_ip_v6_4;
  conn_addr->remote_ip_addr.ip_addr_hi_lo = kwqe2->dst_ip_v6_3;
  conn_addr->remote_ip_addr.ip_addr_lo_hi = kwqe2->dst_ip_v6_2;
  conn_addr->params |= L5CM_CONN_ADDR_PARAMS_IP_VERSION;
 }
 kwqe3 = (struct l4_kwq_connect_req3 *) wqes[*work - 1];

 conn_addr->local_ip_addr.ip_addr_lo_lo = kwqe1->src_ip;
 conn_addr->remote_ip_addr.ip_addr_lo_lo = kwqe1->dst_ip;
 conn_addr->local_tcp_port = kwqe1->src_port;
 conn_addr->remote_tcp_port = kwqe1->dst_port;

 conn_addr->pmtu = kwqe3->pmtu;
 cnic_init_storm_conn_bufs(dev, kwqe1, kwqe3, conn_buf);

 CNIC_WR16(dev, BAR_XSTRORM_INTMEM +
    XSTORM_ISCSI_LOCAL_VLAN_OFFSET(cp->pfid), csk->vlan_id);

 cnic_bnx2x_set_tcp_timestamp(dev,
  kwqe1->tcp_flags & L4_KWQ_CONNECT_REQ1_TIME_STAMP);

 ret = cnic_submit_kwqe_16(dev, L5CM_RAMROD_CMD_ID_TCP_CONNECT,
   kwqe1->cid, ISCSI_CONNECTION_TYPE, &l5_data);
 if (!ret)
  set_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags);

 return ret;
}
