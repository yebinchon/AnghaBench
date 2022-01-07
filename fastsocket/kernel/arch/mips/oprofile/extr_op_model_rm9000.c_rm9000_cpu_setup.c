
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int reset_counter1; scalar_t__ reset_counter2; } ;


 TYPE_1__ reg ;
 int write_c0_perfcount (int) ;

__attribute__((used)) static void rm9000_cpu_setup(void *args)
{
 uint64_t perfcount;

 perfcount = ((uint64_t) reg.reset_counter2 << 32) | reg.reset_counter1;
 write_c0_perfcount(perfcount);
}
