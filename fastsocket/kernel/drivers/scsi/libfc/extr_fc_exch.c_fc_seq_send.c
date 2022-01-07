
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int ex_lock; } ;


 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int fc_seq_send_locked (struct fc_lport*,struct fc_seq*,struct fc_frame*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fc_seq_send(struct fc_lport *lport, struct fc_seq *sp,
         struct fc_frame *fp)
{
 struct fc_exch *ep;
 int error;
 ep = fc_seq_exch(sp);
 spin_lock_bh(&ep->ex_lock);
 error = fc_seq_send_locked(lport, sp, fp);
 spin_unlock_bh(&ep->ex_lock);
 return error;
}
