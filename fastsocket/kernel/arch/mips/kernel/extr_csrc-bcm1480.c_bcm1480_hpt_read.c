
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int A_SCD_ZBBUS_CYCLE_COUNT ;
 int IOADDR (int ) ;
 int __raw_readq (int ) ;

__attribute__((used)) static cycle_t bcm1480_hpt_read(struct clocksource *cs)
{
 return (cycle_t) __raw_readq(IOADDR(A_SCD_ZBBUS_CYCLE_COUNT));
}
