
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef size_t u32 ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct cnic_context {int ctx_flags; scalar_t__ wait_cond; int waitq; int cid; } ;
typedef int l5_data ;


 size_t BNX2X_HW_CID (struct cnic_local*,int ) ;
 int CNIC_RAMROD_TMO ;
 int CTX_FL_CID_ERROR ;
 int EBUSY ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_CFC_DEL ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,size_t,int ,union l5cm_specific_data*) ;
 int init_waitqueue_head (int *) ;
 int memset (union l5cm_specific_data*,int ,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int wait_event_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static int cnic_bnx2x_destroy_ramrod(struct cnic_dev *dev, u32 l5_cid)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];
 union l5cm_specific_data l5_data;
 int ret;
 u32 hw_cid;

 init_waitqueue_head(&ctx->waitq);
 ctx->wait_cond = 0;
 memset(&l5_data, 0, sizeof(l5_data));
 hw_cid = BNX2X_HW_CID(cp, ctx->cid);

 ret = cnic_submit_kwqe_16(dev, RAMROD_CMD_ID_COMMON_CFC_DEL,
      hw_cid, NONE_CONNECTION_TYPE, &l5_data);

 if (ret == 0) {
  wait_event_timeout(ctx->waitq, ctx->wait_cond, CNIC_RAMROD_TMO);
  if (unlikely(test_bit(CTX_FL_CID_ERROR, &ctx->ctx_flags)))
   return -EBUSY;
 }

 return 0;
}
