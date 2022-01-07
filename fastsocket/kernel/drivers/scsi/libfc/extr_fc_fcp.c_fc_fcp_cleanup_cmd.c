
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exch_done ) (int *) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_fcp_pkt {int status_code; int * seq_ptr; struct fc_lport* lp; } ;


 int stub1 (int *) ;

__attribute__((used)) static void fc_fcp_cleanup_cmd(struct fc_fcp_pkt *fsp, int error)
{
 struct fc_lport *lport = fsp->lp;

 if (fsp->seq_ptr) {
  lport->tt.exch_done(fsp->seq_ptr);
  fsp->seq_ptr = ((void*)0);
 }
 fsp->status_code = error;
}
