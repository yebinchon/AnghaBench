
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int cs_to_sh_tmu (struct clocksource*) ;
 int sh_tmu_disable (int ) ;

__attribute__((used)) static void sh_tmu_clocksource_disable(struct clocksource *cs)
{
 sh_tmu_disable(cs_to_sh_tmu(cs));
}
