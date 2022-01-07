
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8253_cascade_ns_to_timer (int,unsigned int*,unsigned int*,unsigned int*,int) ;

__attribute__((used)) static void
pci224_cascade_ns_to_timer(int osc_base, unsigned int *d1, unsigned int *d2,
      unsigned int *nanosec, int round_mode)
{
 i8253_cascade_ns_to_timer(osc_base, d1, d2, nanosec, round_mode);
}
