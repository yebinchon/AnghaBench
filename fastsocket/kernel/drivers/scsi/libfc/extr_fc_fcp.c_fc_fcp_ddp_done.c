
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ddp_done ) (struct fc_lport*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_fcp_pkt {int xfer_ddp; int xfer_len; struct fc_lport* lp; } ;


 int FC_XID_UNKNOWN ;
 int stub1 (struct fc_lport*,int ) ;

void fc_fcp_ddp_done(struct fc_fcp_pkt *fsp)
{
 struct fc_lport *lport;

 if (!fsp)
  return;

 if (fsp->xfer_ddp == FC_XID_UNKNOWN)
  return;

 lport = fsp->lp;
 if (lport->tt.ddp_done) {
  fsp->xfer_len = lport->tt.ddp_done(lport, fsp->xfer_ddp);
  fsp->xfer_ddp = FC_XID_UNKNOWN;
 }
}
