
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {unsigned long total_cycles; int lock; scalar_t__ match_value; } ;
struct clocksource {int dummy; } ;
typedef unsigned long cycle_t ;


 struct sh_cmt_priv* cs_to_sh_cmt (struct clocksource*) ;
 unsigned long sh_cmt_get_counter (struct sh_cmt_priv*,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static cycle_t sh_cmt_clocksource_read(struct clocksource *cs)
{
 struct sh_cmt_priv *p = cs_to_sh_cmt(cs);
 unsigned long flags, raw;
 unsigned long value;
 int has_wrapped;

 spin_lock_irqsave(&p->lock, flags);
 value = p->total_cycles;
 raw = sh_cmt_get_counter(p, &has_wrapped);

 if (unlikely(has_wrapped))
  raw += p->match_value;
 spin_unlock_irqrestore(&p->lock, flags);

 return value + raw;
}
