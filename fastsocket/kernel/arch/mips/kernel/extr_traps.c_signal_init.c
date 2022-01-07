
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _restore_fp_context ;
 int _save_fp_context ;
 scalar_t__ cpu_has_fpu ;
 int fpu_emulator_restore_context ;
 int fpu_emulator_save_context ;
 int restore_fp_context ;
 int save_fp_context ;
 int smp_restore_fp_context ;
 int smp_save_fp_context ;

__attribute__((used)) static inline void signal_init(void)
{





 if (cpu_has_fpu) {
  save_fp_context = _save_fp_context;
  restore_fp_context = _restore_fp_context;
 } else {
  save_fp_context = fpu_emulator_save_context;
  restore_fp_context = fpu_emulator_restore_context;
 }

}
