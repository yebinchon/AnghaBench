
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int SYS_RTCREAD ;
 int au_readl (int ) ;

__attribute__((used)) static cycle_t au1x_counter1_read(struct clocksource *cs)
{
 return au_readl(SYS_RTCREAD);
}
