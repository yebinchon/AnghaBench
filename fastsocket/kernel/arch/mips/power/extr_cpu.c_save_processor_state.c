
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_dsp ;
 int current ;
 scalar_t__ is_fpu_owner () ;
 int read_c0_status () ;
 int save_dsp (int ) ;
 int save_fp (int ) ;
 int saved_status ;

void save_processor_state(void)
{
 saved_status = read_c0_status();

 if (is_fpu_owner())
  save_fp(current);
 if (cpu_has_dsp)
  save_dsp(current);
}
