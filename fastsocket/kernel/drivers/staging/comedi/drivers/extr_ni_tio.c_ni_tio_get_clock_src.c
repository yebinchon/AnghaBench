
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct ni_gpct {int dummy; } ;


 int do_div (unsigned int,unsigned int const) ;
 unsigned int ni_tio_clock_period_ps (struct ni_gpct*,unsigned int) ;
 unsigned int ni_tio_generic_clock_src_select (struct ni_gpct*) ;

__attribute__((used)) static void ni_tio_get_clock_src(struct ni_gpct *counter,
     unsigned int *clock_source,
     unsigned int *period_ns)
{
 static const unsigned pico_per_nano = 1000;
 uint64_t temp64;
 *clock_source = ni_tio_generic_clock_src_select(counter);
 temp64 = ni_tio_clock_period_ps(counter, *clock_source);
 do_div(temp64, pico_per_nano);
 *period_ns = temp64;
}
