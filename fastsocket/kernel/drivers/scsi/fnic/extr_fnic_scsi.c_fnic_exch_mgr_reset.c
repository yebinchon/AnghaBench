
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fnic {int in_remove; } ;
struct fc_lport {int dummy; } ;


 int fc_exch_mgr_reset (struct fc_lport*,scalar_t__,scalar_t__) ;
 int fnic_rport_exch_reset (struct fnic*,scalar_t__) ;
 int fnic_scsi_abort_io (struct fc_lport*) ;
 int fnic_scsi_cleanup (struct fc_lport*) ;
 struct fnic* lport_priv (struct fc_lport*) ;

void fnic_exch_mgr_reset(struct fc_lport *lp, u32 sid, u32 did)
{
 struct fnic *fnic = lport_priv(lp);


 if (sid)
  goto call_fc_exch_mgr_reset;

 if (did) {
  fnic_rport_exch_reset(fnic, did);
  goto call_fc_exch_mgr_reset;
 }





 if (!fnic->in_remove)
  fnic_scsi_cleanup(lp);
 else
  fnic_scsi_abort_io(lp);


call_fc_exch_mgr_reset:
 fc_exch_mgr_reset(lp, sid, did);

}
