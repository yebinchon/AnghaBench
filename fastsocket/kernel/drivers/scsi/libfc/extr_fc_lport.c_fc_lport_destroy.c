
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exch_mgr_reset ) (struct fc_lport*,int ,int ) ;int (* disc_stop_final ) (struct fc_lport*) ;int (* fcp_abort_io ) (struct fc_lport*) ;int frame_send; } ;
struct fc_lport {int retry_work; TYPE_1__ tt; int lp_mutex; scalar_t__ link_up; int state; } ;


 int LPORT_ST_DISABLED ;
 int cancel_delayed_work_sync (int *) ;
 int fc_fc4_del_lport (struct fc_lport*) ;
 int fc_frame_drop ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*) ;
 int stub2 (struct fc_lport*) ;
 int stub3 (struct fc_lport*,int ,int ) ;

int fc_lport_destroy(struct fc_lport *lport)
{
 mutex_lock(&lport->lp_mutex);
 lport->state = LPORT_ST_DISABLED;
 lport->link_up = 0;
 lport->tt.frame_send = fc_frame_drop;
 mutex_unlock(&lport->lp_mutex);

 lport->tt.fcp_abort_io(lport);
 lport->tt.disc_stop_final(lport);
 lport->tt.exch_mgr_reset(lport, 0, 0);
 cancel_delayed_work_sync(&lport->retry_work);
 fc_fc4_del_lport(lport);
 return 0;
}
