
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_fcp_pkt {int status_code; scalar_t__ io_status; int state; int * seq_ptr; TYPE_2__* lp; } ;
struct TYPE_3__ {int (* exch_done ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ tt; } ;


 int FC_ERROR ;
 int FC_SRB_ABORT_PENDING ;
 int fc_fcp_complete_locked (struct fc_fcp_pkt*) ;
 int stub1 (int *) ;

__attribute__((used)) static void fc_fcp_retry_cmd(struct fc_fcp_pkt *fsp)
{
 if (fsp->seq_ptr) {
  fsp->lp->tt.exch_done(fsp->seq_ptr);
  fsp->seq_ptr = ((void*)0);
 }

 fsp->state &= ~FC_SRB_ABORT_PENDING;
 fsp->io_status = 0;
 fsp->status_code = FC_ERROR;
 fc_fcp_complete_locked(fsp);
}
