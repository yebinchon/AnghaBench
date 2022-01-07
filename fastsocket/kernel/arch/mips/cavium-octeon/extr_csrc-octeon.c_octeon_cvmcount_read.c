
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int read_c0_cvmcount () ;

__attribute__((used)) static cycle_t octeon_cvmcount_read(struct clocksource *cs)
{
 return read_c0_cvmcount();
}
