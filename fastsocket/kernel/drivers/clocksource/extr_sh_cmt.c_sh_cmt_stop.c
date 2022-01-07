
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {unsigned long flags; int lock; int max_match_value; } ;


 unsigned long FLAG_CLOCKEVENT ;
 unsigned long FLAG_CLOCKSOURCE ;
 int sh_cmt_disable (struct sh_cmt_priv*) ;
 int sh_cmt_set_next (struct sh_cmt_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_cmt_stop(struct sh_cmt_priv *p, unsigned long flag)
{
 unsigned long flags;
 unsigned long f;

 spin_lock_irqsave(&p->lock, flags);

 f = p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE);
 p->flags &= ~flag;

 if (f && !(p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
  sh_cmt_disable(p);


 if ((flag == FLAG_CLOCKEVENT) && (p->flags & FLAG_CLOCKSOURCE))
  sh_cmt_set_next(p, p->max_match_value);

 spin_unlock_irqrestore(&p->lock, flags);
}
