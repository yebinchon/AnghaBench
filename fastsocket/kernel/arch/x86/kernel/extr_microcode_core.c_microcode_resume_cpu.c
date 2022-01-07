
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_cpu_info {int mc; } ;
typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;


 int UCODE_NFOUND ;
 int UCODE_OK ;
 int apply_microcode_on_target (int) ;
 int pr_debug (char*,int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static enum ucode_state microcode_resume_cpu(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

 if (!uci->mc)
  return UCODE_NFOUND;

 pr_debug("microcode: CPU%d updated upon resume\n", cpu);
 apply_microcode_on_target(cpu);

 return UCODE_OK;
}
