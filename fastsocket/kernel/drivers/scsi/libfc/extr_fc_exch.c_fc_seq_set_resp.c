
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int ex_lock; void* arg; } ;


 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_seq_set_resp(struct fc_seq *sp,
       void (*resp)(struct fc_seq *, struct fc_frame *,
      void *),
       void *arg)
{
 struct fc_exch *ep = fc_seq_exch(sp);

 spin_lock_bh(&ep->ex_lock);
 ep->resp = resp;
 ep->arg = arg;
 spin_unlock_bh(&ep->ex_lock);
}
