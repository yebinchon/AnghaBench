
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {int rate; scalar_t__ total_cycles; } ;
struct clocksource {int shift; int mult; } ;


 int FLAG_CLOCKSOURCE ;
 int clocksource_hz2mult (int ,int ) ;
 struct sh_cmt_priv* cs_to_sh_cmt (struct clocksource*) ;
 int sh_cmt_start (struct sh_cmt_priv*,int ) ;

__attribute__((used)) static int sh_cmt_clocksource_enable(struct clocksource *cs)
{
 struct sh_cmt_priv *p = cs_to_sh_cmt(cs);
 int ret;

 p->total_cycles = 0;

 ret = sh_cmt_start(p, FLAG_CLOCKSOURCE);
 if (ret)
  return ret;


 cs->shift = 0;
 cs->mult = clocksource_hz2mult(p->rate, cs->shift);
 return 0;
}
