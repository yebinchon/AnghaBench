
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef int u32 ;
struct regpair {int dummy; } ;
struct kwqe {int dummy; } ;
struct kcqe {int dummy; } ;
struct fcoe_kwqe_conn_offload4 {int fcoe_conn_id; } ;
struct fcoe_kwqe_conn_offload3 {int fcoe_conn_id; } ;
struct fcoe_kwqe_conn_offload2 {int fcoe_conn_id; } ;
struct fcoe_kwqe_conn_offload1 {int fcoe_conn_id; } ;
struct fcoe_kcqe {int fcoe_conn_id; int completion_status; int op_code; int offload_kwqe4; int offload_kwqe3; int offload_kwqe2; int offload_kwqe1; } ;
struct TYPE_4__ {int cdu_usage; } ;
struct TYPE_3__ {int cdu_reserved; } ;
struct fcoe_context {TYPE_2__ ustorm_ag_context; TYPE_1__ xstorm_ag_context; } ;
struct fcoe_conn_offload_ramrod_params {int fcoe_conn_id; int completion_status; int op_code; int offload_kwqe4; int offload_kwqe3; int offload_kwqe2; int offload_kwqe1; } ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {int max_fcoe_conn; int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int cid; int ctx_flags; } ;
typedef int kcqe ;


 scalar_t__ BNX2X_FCOE_L5_CID_BASE ;
 int BNX2X_HW_CID (struct cnic_local*,int) ;
 int CDU_REGION_NUMBER_UCM_AG ;
 int CDU_REGION_NUMBER_XCM_AG ;
 int CDU_RSRVD_VALUE_TYPE_A (int,int ,int ) ;
 int CNIC_KWQ16_DATA_SIZE ;
 int CNIC_ULP_FCOE ;
 int CTX_FL_OFFLD_START ;
 int EINVAL ;
 int FCOE_CONNECTION_TYPE ;
 int FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE ;
 int FCOE_KCQE_OPCODE_OFFLOAD_CONN ;
 int FCOE_RAMROD_CMD_ID_OFFLOAD_CONN ;
 int cnic_alloc_bnx2x_conn_resc (struct cnic_dev*,int) ;
 int cnic_free_bnx2x_conn_resc (struct cnic_dev*,int) ;
 struct fcoe_context* cnic_get_bnx2x_ctx (struct cnic_dev*,int,int,struct regpair*) ;
 struct fcoe_kcqe* cnic_get_kwqe_16_data (struct cnic_local*,int,union l5cm_specific_data*) ;
 int cnic_reply_bnx2x_kcqes (struct cnic_dev*,int ,struct kcqe**,int) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int,int ,union l5cm_specific_data*) ;
 int memcpy (int *,struct fcoe_kwqe_conn_offload4*,int) ;
 int memset (struct fcoe_kcqe*,int ,int) ;
 int netdev_err (int ,char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_bnx2x_fcoe_ofld1(struct cnic_dev *dev, struct kwqe *wqes[],
     u32 num, int *work)
{
 int ret = 0;
 u32 cid = -1, l5_cid;
 struct cnic_local *cp = dev->cnic_priv;
 struct fcoe_kwqe_conn_offload1 *req1;
 struct fcoe_kwqe_conn_offload2 *req2;
 struct fcoe_kwqe_conn_offload3 *req3;
 struct fcoe_kwqe_conn_offload4 *req4;
 struct fcoe_conn_offload_ramrod_params *fcoe_offload;
 struct cnic_context *ctx;
 struct fcoe_context *fctx;
 struct regpair ctx_addr;
 union l5cm_specific_data l5_data;
 struct fcoe_kcqe kcqe;
 struct kcqe *cqes[1];

 if (num < 4) {
  *work = num;
  return -EINVAL;
 }
 req1 = (struct fcoe_kwqe_conn_offload1 *) wqes[0];
 req2 = (struct fcoe_kwqe_conn_offload2 *) wqes[1];
 req3 = (struct fcoe_kwqe_conn_offload3 *) wqes[2];
 req4 = (struct fcoe_kwqe_conn_offload4 *) wqes[3];

 *work = 4;

 l5_cid = req1->fcoe_conn_id;
 if (l5_cid >= dev->max_fcoe_conn)
  goto err_reply;

 l5_cid += BNX2X_FCOE_L5_CID_BASE;

 ctx = &cp->ctx_tbl[l5_cid];
 if (test_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags))
  goto err_reply;

 ret = cnic_alloc_bnx2x_conn_resc(dev, l5_cid);
 if (ret) {
  ret = 0;
  goto err_reply;
 }
 cid = ctx->cid;

 fctx = cnic_get_bnx2x_ctx(dev, cid, 1, &ctx_addr);
 if (fctx) {
  u32 hw_cid = BNX2X_HW_CID(cp, cid);
  u32 val;

  val = CDU_RSRVD_VALUE_TYPE_A(hw_cid, CDU_REGION_NUMBER_XCM_AG,
          FCOE_CONNECTION_TYPE);
  fctx->xstorm_ag_context.cdu_reserved = val;
  val = CDU_RSRVD_VALUE_TYPE_A(hw_cid, CDU_REGION_NUMBER_UCM_AG,
          FCOE_CONNECTION_TYPE);
  fctx->ustorm_ag_context.cdu_usage = val;
 }
 if (sizeof(*fcoe_offload) > CNIC_KWQ16_DATA_SIZE) {
  netdev_err(dev->netdev, "fcoe_offload size too big\n");
  goto err_reply;
 }
 fcoe_offload = cnic_get_kwqe_16_data(cp, l5_cid, &l5_data);
 if (!fcoe_offload)
  goto err_reply;

 memset(fcoe_offload, 0, sizeof(*fcoe_offload));
 memcpy(&fcoe_offload->offload_kwqe1, req1, sizeof(*req1));
 memcpy(&fcoe_offload->offload_kwqe2, req2, sizeof(*req2));
 memcpy(&fcoe_offload->offload_kwqe3, req3, sizeof(*req3));
 memcpy(&fcoe_offload->offload_kwqe4, req4, sizeof(*req4));

 cid = BNX2X_HW_CID(cp, cid);
 ret = cnic_submit_kwqe_16(dev, FCOE_RAMROD_CMD_ID_OFFLOAD_CONN, cid,
      FCOE_CONNECTION_TYPE, &l5_data);
 if (!ret)
  set_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags);

 return ret;

err_reply:
 if (cid != -1)
  cnic_free_bnx2x_conn_resc(dev, l5_cid);

 memset(&kcqe, 0, sizeof(kcqe));
 kcqe.op_code = FCOE_KCQE_OPCODE_OFFLOAD_CONN;
 kcqe.fcoe_conn_id = req1->fcoe_conn_id;
 kcqe.completion_status = FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE;

 cqes[0] = (struct kcqe *) &kcqe;
 cnic_reply_bnx2x_kcqes(dev, CNIC_ULP_FCOE, cqes, 1);
 return ret;
}
