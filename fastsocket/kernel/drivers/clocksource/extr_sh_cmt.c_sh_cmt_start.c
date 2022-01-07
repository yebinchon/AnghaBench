
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {unsigned long flags; int lock; int max_match_value; int rate; } ;


 unsigned long FLAG_CLOCKEVENT ;
 unsigned long FLAG_CLOCKSOURCE ;
 int sh_cmt_enable (struct sh_cmt_priv*,int *) ;
 int sh_cmt_set_next (struct sh_cmt_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_cmt_start(struct sh_cmt_priv *p, unsigned long flag)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&p->lock, flags);

 if (!(p->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
  ret = sh_cmt_enable(p, &p->rate);

 if (ret)
  goto out;
 p->flags |= flag;


 if ((flag == FLAG_CLOCKSOURCE) && (!(p->flags & FLAG_CLOCKEVENT)))
  sh_cmt_set_next(p, p->max_match_value);
 out:
 spin_unlock_irqrestore(&p->lock, flags);

 return ret;
}
