
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpuc_flush_kern_all () ;
 int __cpuc_flush_user_all () ;
 int arch_reset (char,char const*) ;
 int arm_machine_restart (char,char const*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void s3c24xx_pm_restart(char mode, const char *cmd)
{
 if (mode != 's') {
  unsigned long flags;

  local_irq_save(flags);
  __cpuc_flush_kern_all();
  __cpuc_flush_user_all();

  arch_reset(mode, cmd);
  local_irq_restore(flags);
 }


 arm_machine_restart(mode, cmd);
}
