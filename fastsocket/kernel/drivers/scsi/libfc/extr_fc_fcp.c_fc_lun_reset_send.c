
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* fcp_cmd_send ) (struct fc_lport*,struct fc_fcp_pkt*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_fcp_pkt {int timer; int recov_retry; struct fc_lport* lp; } ;


 scalar_t__ FC_MAX_RECOV_RETRY ;
 scalar_t__ fc_fcp_lock_pkt (struct fc_fcp_pkt*) ;
 int fc_fcp_timer_set (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_unlock_pkt (struct fc_fcp_pkt*) ;
 int fc_tm_done ;
 int get_fsp_rec_tov (struct fc_fcp_pkt*) ;
 int setup_timer (int *,void (*) (unsigned long),unsigned long) ;
 scalar_t__ stub1 (struct fc_lport*,struct fc_fcp_pkt*,int ) ;

__attribute__((used)) static void fc_lun_reset_send(unsigned long data)
{
 struct fc_fcp_pkt *fsp = (struct fc_fcp_pkt *)data;
 struct fc_lport *lport = fsp->lp;

 if (lport->tt.fcp_cmd_send(lport, fsp, fc_tm_done)) {
  if (fsp->recov_retry++ >= FC_MAX_RECOV_RETRY)
   return;
  if (fc_fcp_lock_pkt(fsp))
   return;
  setup_timer(&fsp->timer, fc_lun_reset_send, (unsigned long)fsp);
  fc_fcp_timer_set(fsp, get_fsp_rec_tov(fsp));
  fc_fcp_unlock_pkt(fsp);
 }
}
