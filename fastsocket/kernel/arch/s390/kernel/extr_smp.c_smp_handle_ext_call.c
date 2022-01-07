
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_call_fast; } ;


 TYPE_1__ S390_lowcore ;
 int ec_call_function ;
 int ec_call_function_single ;
 int ec_schedule ;
 int ec_stop_cpu ;
 int generic_smp_call_function_interrupt () ;
 int generic_smp_call_function_single_interrupt () ;
 int scheduler_ipi () ;
 int smp_stop_cpu () ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static void smp_handle_ext_call(void)
{
 unsigned long bits;


 bits = xchg(&S390_lowcore.ext_call_fast, 0);
 if (test_bit(ec_schedule, &bits))
  scheduler_ipi();
 if (test_bit(ec_stop_cpu, &bits))
  smp_stop_cpu();
 if (test_bit(ec_call_function, &bits))
  generic_smp_call_function_interrupt();
 if (test_bit(ec_call_function_single, &bits))
  generic_smp_call_function_single_interrupt();
}
