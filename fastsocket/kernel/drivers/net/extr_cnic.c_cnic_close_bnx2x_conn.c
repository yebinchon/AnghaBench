
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef int u32 ;
struct cnic_sock {size_t l5_cid; int state; int cid; int flags; struct cnic_dev* dev; } ;
struct cnic_local {struct cnic_context* ctx_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct cnic_context {int timestamp; } ;
typedef int l5_data ;


 int ISCSI_CONNECTION_TYPE ;





 int SK_F_HW_ERR ;
 int SK_F_PG_OFFLD_COMPLETE ;
 int cnic_close_conn (struct cnic_sock*) ;
 int cnic_cm_upcall (struct cnic_local*,struct cnic_sock*,int ) ;
 int cnic_ready_to_close (struct cnic_sock*,int) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int,int ,int ,union l5cm_specific_data*) ;
 int jiffies ;
 int memset (union l5cm_specific_data*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void cnic_close_bnx2x_conn(struct cnic_sock *csk, u32 opcode)
{
 struct cnic_dev *dev = csk->dev;
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_context *ctx = &cp->ctx_tbl[csk->l5_cid];
 union l5cm_specific_data l5_data;
 u32 cmd = 0;
 int close_complete = 0;

 switch (opcode) {
 case 130:
 case 132:
 case 131:
  if (cnic_ready_to_close(csk, opcode)) {
   if (test_bit(SK_F_HW_ERR, &csk->flags))
    close_complete = 1;
   else if (test_bit(SK_F_PG_OFFLD_COMPLETE, &csk->flags))
    cmd = 129;
   else
    close_complete = 1;
  }
  break;
 case 129:
  cmd = 128;
  break;
 case 128:
  close_complete = 1;
  break;
 }
 if (cmd) {
  memset(&l5_data, 0, sizeof(l5_data));

  cnic_submit_kwqe_16(dev, cmd, csk->cid, ISCSI_CONNECTION_TYPE,
        &l5_data);
 } else if (close_complete) {
  ctx->timestamp = jiffies;
  cnic_close_conn(csk);
  cnic_cm_upcall(cp, csk, csk->state);
 }
}
