
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_fcp_pkt {int seq_ptr; TYPE_2__* lp; int state; } ;
struct TYPE_3__ {int (* seq_exch_abort ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ tt; } ;


 int EINVAL ;
 int FC_SRB_ABORT_PENDING ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int fc_fcp_send_abort(struct fc_fcp_pkt *fsp)
{
 if (!fsp->seq_ptr)
  return -EINVAL;

 fsp->state |= FC_SRB_ABORT_PENDING;
 return fsp->lp->tt.seq_exch_abort(fsp->seq_ptr, 0);
}
