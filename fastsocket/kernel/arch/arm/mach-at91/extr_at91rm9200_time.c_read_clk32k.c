
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int read_CRTR () ;

__attribute__((used)) static cycle_t read_clk32k(struct clocksource *cs)
{
 return read_CRTR();
}
