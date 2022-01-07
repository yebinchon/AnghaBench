
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int id; } ;
struct fc_exch {int f_ctl; int seq_id; } ;


 int FC_EXCH_DBG (struct fc_exch*,char*,int ,int ) ;
 struct fc_seq* fc_seq_alloc (struct fc_exch*,int ) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;

__attribute__((used)) static struct fc_seq *fc_seq_start_next_locked(struct fc_seq *sp)
{
 struct fc_exch *ep = fc_seq_exch(sp);

 sp = fc_seq_alloc(ep, ep->seq_id++);
 FC_EXCH_DBG(ep, "f_ctl %6x seq %2x\n",
      ep->f_ctl, sp->id);
 return sp;
}
