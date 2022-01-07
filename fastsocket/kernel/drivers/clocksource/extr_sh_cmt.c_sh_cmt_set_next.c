
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {unsigned long max_match_value; unsigned long next_match_value; int lock; } ;


 int pr_warning (char*) ;
 int sh_cmt_clock_event_program_verify (struct sh_cmt_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_cmt_set_next(struct sh_cmt_priv *p, unsigned long delta)
{
 unsigned long flags;

 if (delta > p->max_match_value)
  pr_warning("sh_cmt: delta out of range\n");

 spin_lock_irqsave(&p->lock, flags);
 p->next_match_value = delta;
 sh_cmt_clock_event_program_verify(p, 0);
 spin_unlock_irqrestore(&p->lock, flags);
}
