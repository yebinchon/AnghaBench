
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_libfc_priv {int flags; } ;
struct fc_rport {struct fc_rport_libfc_priv* dd_data; } ;
struct TYPE_2__ {scalar_t__ fc_tm_flags; } ;
struct fc_fcp_pkt {int state; TYPE_1__ cdb_cmd; struct fc_rport* rport; } ;


 int FC_RP_FLAGS_REC_SUPPORTED ;
 int FC_SRB_FCP_PROCESSING_TMO ;
 int FC_SRB_RCV_STATUS ;
 int FC_TIMED_OUT ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;
 scalar_t__ fc_fcp_lock_pkt (struct fc_fcp_pkt*) ;
 int fc_fcp_rec (struct fc_fcp_pkt*) ;
 int fc_fcp_recovery (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_unlock_pkt (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_timeout(unsigned long data)
{
 struct fc_fcp_pkt *fsp = (struct fc_fcp_pkt *)data;
 struct fc_rport *rport = fsp->rport;
 struct fc_rport_libfc_priv *rpriv = rport->dd_data;

 if (fc_fcp_lock_pkt(fsp))
  return;

 if (fsp->cdb_cmd.fc_tm_flags)
  goto unlock;

 fsp->state |= FC_SRB_FCP_PROCESSING_TMO;

 if (rpriv->flags & FC_RP_FLAGS_REC_SUPPORTED)
  fc_fcp_rec(fsp);
 else if (fsp->state & FC_SRB_RCV_STATUS)
  fc_fcp_complete_locked(fsp);
 else
  fc_fcp_recovery(fsp, FC_TIMED_OUT);
 fsp->state &= ~FC_SRB_FCP_PROCESSING_TMO;
unlock:
 fc_fcp_unlock_pkt(fsp);
}
