
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int rate; } ;
struct clocksource {int shift; int mult; } ;


 int clocksource_hz2mult (int ,int) ;
 struct sh_tmu_priv* cs_to_sh_tmu (struct clocksource*) ;
 int sh_tmu_enable (struct sh_tmu_priv*) ;

__attribute__((used)) static int sh_tmu_clocksource_enable(struct clocksource *cs)
{
 struct sh_tmu_priv *p = cs_to_sh_tmu(cs);
 int ret;

 ret = sh_tmu_enable(p);
 if (ret)
  return ret;


 cs->shift = 10;
 cs->mult = clocksource_hz2mult(p->rate, cs->shift);
 return 0;
}
