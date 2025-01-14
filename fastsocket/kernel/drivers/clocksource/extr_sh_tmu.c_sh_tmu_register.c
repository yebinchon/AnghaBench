
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int dummy; } ;


 int sh_tmu_register_clockevent (struct sh_tmu_priv*,char*,unsigned long) ;
 int sh_tmu_register_clocksource (struct sh_tmu_priv*,char*,unsigned long) ;

__attribute__((used)) static int sh_tmu_register(struct sh_tmu_priv *p, char *name,
      unsigned long clockevent_rating,
      unsigned long clocksource_rating)
{
 if (clockevent_rating)
  sh_tmu_register_clockevent(p, name, clockevent_rating);
 else if (clocksource_rating)
  sh_tmu_register_clocksource(p, name, clocksource_rating);

 return 0;
}
