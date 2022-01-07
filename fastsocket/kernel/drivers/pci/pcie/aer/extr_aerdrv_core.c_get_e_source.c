
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aer_rpc {size_t prod_idx; size_t cons_idx; int e_lock; struct aer_err_source* e_sources; } ;
struct aer_err_source {int dummy; } ;


 size_t AER_ERROR_SOURCES_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_e_source(struct aer_rpc *rpc, struct aer_err_source *e_src)
{
 unsigned long flags;


 spin_lock_irqsave(&rpc->e_lock, flags);
 if (rpc->prod_idx == rpc->cons_idx) {
  spin_unlock_irqrestore(&rpc->e_lock, flags);
  return 0;
 }

 *e_src = rpc->e_sources[rpc->cons_idx];
 rpc->cons_idx++;
 if (rpc->cons_idx == AER_ERROR_SOURCES_MAX)
  rpc->cons_idx = 0;
 spin_unlock_irqrestore(&rpc->e_lock, flags);

 return 1;
}
