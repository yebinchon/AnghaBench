
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clocksource {int dummy; } ;
typedef scalar_t__ cycle_t ;


 scalar_t__ MTU_VAL (int ) ;
 scalar_t__ mtu_base ;
 scalar_t__ nmdk_count ;
 scalar_t__ nmdk_cycle ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static cycle_t nmdk_read_timer(struct clocksource *cs)
{
 u32 count = readl(mtu_base + MTU_VAL(0));
 return nmdk_count + nmdk_cycle - count;

}
