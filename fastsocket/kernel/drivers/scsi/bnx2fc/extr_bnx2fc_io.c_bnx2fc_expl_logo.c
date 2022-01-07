
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_rport_priv {int dummy; } ;
struct TYPE_4__ {int disc_mutex; } ;
struct TYPE_3__ {int (* rport_logoff ) (struct fc_rport_priv*) ;} ;
struct fc_lport {TYPE_2__ disc; TYPE_1__ tt; } ;
struct bnx2fc_rport {int tgt_lock; int flags; struct fc_rport_priv* rdata; } ;
struct bnx2fc_cmd {int wait_for_comp; int refcount; int tm_done; struct bnx2fc_rport* tgt; } ;


 int BNX2FC_FLAG_EXPL_LOGO ;
 int BNX2FC_FLAG_SESSION_READY ;
 int BNX2FC_IO_DBG (struct bnx2fc_cmd*,char*,int ) ;
 int BNX2FC_RELOGIN_WAIT_CNT ;
 int BNX2FC_RELOGIN_WAIT_TIME ;
 int FAILED ;
 int SUCCESS ;
 int bnx2fc_cmd_release ;
 int bnx2fc_initiate_cleanup (struct bnx2fc_cmd*) ;
 int clear_bit (int ,int *) ;
 int kref_put (int *,int ) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct fc_rport_priv*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_for_completion (int *) ;

int bnx2fc_expl_logo(struct fc_lport *lport, struct bnx2fc_cmd *io_req)
{
 struct bnx2fc_rport *tgt = io_req->tgt;
 struct fc_rport_priv *rdata = tgt->rdata;
 int logo_issued;
 int rc = SUCCESS;
 int wait_cnt = 0;

 BNX2FC_IO_DBG(io_req, "Expl logo - tgt flags = 0x%lx\n",
        tgt->flags);
 logo_issued = test_and_set_bit(BNX2FC_FLAG_EXPL_LOGO,
           &tgt->flags);
 io_req->wait_for_comp = 1;
 bnx2fc_initiate_cleanup(io_req);

 spin_unlock_bh(&tgt->tgt_lock);

 wait_for_completion(&io_req->tm_done);

 io_req->wait_for_comp = 0;




  kref_put(&io_req->refcount, bnx2fc_cmd_release);

 if (!logo_issued) {
  clear_bit(BNX2FC_FLAG_SESSION_READY, &tgt->flags);
  mutex_lock(&lport->disc.disc_mutex);
  lport->tt.rport_logoff(rdata);
  mutex_unlock(&lport->disc.disc_mutex);
  do {
   msleep(BNX2FC_RELOGIN_WAIT_TIME);
   if (wait_cnt++ > BNX2FC_RELOGIN_WAIT_CNT) {
    rc = FAILED;
    break;
   }
  } while (!test_bit(BNX2FC_FLAG_SESSION_READY, &tgt->flags));
 }
 spin_lock_bh(&tgt->tgt_lock);
 return rc;
}
