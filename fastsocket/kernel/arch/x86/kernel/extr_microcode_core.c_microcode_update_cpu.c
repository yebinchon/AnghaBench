
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_cpu_info {scalar_t__ valid; } ;
typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;


 int microcode_init_cpu (int) ;
 int microcode_resume_cpu (int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static enum ucode_state microcode_update_cpu(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
 enum ucode_state ustate;

 if (uci->valid)
  ustate = microcode_resume_cpu(cpu);
 else
  ustate = microcode_init_cpu(cpu);

 return ustate;
}
