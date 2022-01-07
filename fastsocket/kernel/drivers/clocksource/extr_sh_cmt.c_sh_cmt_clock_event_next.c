
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {int flags; unsigned long next_match_value; } ;
struct clock_event_device {scalar_t__ mode; } ;


 int BUG_ON (int) ;
 scalar_t__ CLOCK_EVT_MODE_ONESHOT ;
 int FLAG_IRQCONTEXT ;
 struct sh_cmt_priv* ced_to_sh_cmt (struct clock_event_device*) ;
 scalar_t__ likely (int) ;
 int sh_cmt_set_next (struct sh_cmt_priv*,unsigned long) ;

__attribute__((used)) static int sh_cmt_clock_event_next(unsigned long delta,
       struct clock_event_device *ced)
{
 struct sh_cmt_priv *p = ced_to_sh_cmt(ced);

 BUG_ON(ced->mode != CLOCK_EVT_MODE_ONESHOT);
 if (likely(p->flags & FLAG_IRQCONTEXT))
  p->next_match_value = delta;
 else
  sh_cmt_set_next(p, delta);

 return 0;
}
