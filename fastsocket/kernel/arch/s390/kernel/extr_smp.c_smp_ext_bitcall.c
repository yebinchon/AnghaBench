
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ec_bit_sig ;
struct TYPE_2__ {int ext_call_fast; } ;


 TYPE_1__** lowcore_ptr ;
 int set_bit (int ,unsigned long*) ;
 scalar_t__ signal_processor (int,int ) ;
 scalar_t__ sigp_busy ;
 int sigp_emergency_signal ;
 int udelay (int) ;

__attribute__((used)) static void smp_ext_bitcall(int cpu, ec_bit_sig sig)
{



 set_bit(sig, (unsigned long *) &lowcore_ptr[cpu]->ext_call_fast);
 while (signal_processor(cpu, sigp_emergency_signal) == sigp_busy)
  udelay(10);
}
