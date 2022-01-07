
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int FLAG_CLOCKSOURCE ;
 int cs_to_sh_cmt (struct clocksource*) ;
 int sh_cmt_stop (int ,int ) ;

__attribute__((used)) static void sh_cmt_clocksource_disable(struct clocksource *cs)
{
 sh_cmt_stop(cs_to_sh_cmt(cs), FLAG_CLOCKSOURCE);
}
