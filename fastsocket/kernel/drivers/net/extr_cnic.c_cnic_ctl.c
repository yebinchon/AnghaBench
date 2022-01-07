
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cnic_local {struct cnic_context* ctx_tbl; int delete_task; int cnic_local_flags; } ;
struct cnic_dev {int netdev; int flags; struct cnic_local* cnic_priv; } ;
struct cnic_ctl_completion {int error; int cid; } ;
struct TYPE_2__ {struct cnic_ctl_completion comp; } ;
struct cnic_ctl_info {int cmd; TYPE_1__ data; } ;
struct cnic_context {int wait_cond; int waitq; int ctx_flags; } ;


 size_t BNX2X_SW_CID (int ) ;






 int CNIC_F_CNIC_UP ;
 int CNIC_LCL_FL_STOP_ISCSI ;
 int CNIC_ULP_FCOE ;
 int CNIC_ULP_ISCSI ;
 int CTX_FL_CID_ERROR ;
 int EINVAL ;
 int cnic_copy_ulp_stats (struct cnic_dev*,int) ;
 int cnic_get_l5_cid (struct cnic_local*,size_t,size_t*) ;
 int cnic_hold (struct cnic_dev*) ;
 int cnic_put (struct cnic_dev*) ;
 int cnic_start_hw (struct cnic_dev*) ;
 int cnic_stop_hw (struct cnic_dev*) ;
 int cnic_ulp_start (struct cnic_dev*) ;
 int cnic_ulp_stop (struct cnic_dev*) ;
 int cnic_wq ;
 int netdev_err (int ,char*,size_t,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int unlikely (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int cnic_ctl(void *data, struct cnic_ctl_info *info)
{
 struct cnic_dev *dev = data;
 int ulp_type = CNIC_ULP_ISCSI;

 switch (info->cmd) {
 case 129:
  cnic_hold(dev);

  cnic_ulp_stop(dev);
  cnic_stop_hw(dev);

  cnic_put(dev);
  break;
 case 130:
  cnic_hold(dev);

  if (!cnic_start_hw(dev))
   cnic_ulp_start(dev);

  cnic_put(dev);
  break;
 case 128: {
  struct cnic_local *cp = dev->cnic_priv;
  set_bit(CNIC_LCL_FL_STOP_ISCSI, &cp->cnic_local_flags);
  queue_delayed_work(cnic_wq, &cp->delete_task, 0);
  break;
 }
 case 133: {
  struct cnic_ctl_completion *comp = &info->data.comp;
  u32 cid = BNX2X_SW_CID(comp->cid);
  u32 l5_cid;
  struct cnic_local *cp = dev->cnic_priv;

  if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
   break;

  if (cnic_get_l5_cid(cp, cid, &l5_cid) == 0) {
   struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];

   if (unlikely(comp->error)) {
    set_bit(CTX_FL_CID_ERROR, &ctx->ctx_flags);
    netdev_err(dev->netdev,
        "CID %x CFC delete comp error %x\n",
        cid, comp->error);
   }

   ctx->wait_cond = 1;
   wake_up(&ctx->waitq);
  }
  break;
 }
 case 132:
  ulp_type = CNIC_ULP_FCOE;

 case 131:
  cnic_hold(dev);
  cnic_copy_ulp_stats(dev, ulp_type);
  cnic_put(dev);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
