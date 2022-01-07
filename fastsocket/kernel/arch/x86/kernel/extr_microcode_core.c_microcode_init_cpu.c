
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;
struct TYPE_4__ {int (* request_microcode_fw ) (int,int *) ;} ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ SYSTEM_RUNNING ;
 int UCODE_ERROR ;
 int UCODE_NFOUND ;
 int UCODE_OK ;
 int apply_microcode_on_target (int) ;
 scalar_t__ collect_cpu_info (int) ;
 TYPE_2__* microcode_ops ;
 TYPE_1__* microcode_pdev ;
 int pr_debug (char*,int) ;
 int stub1 (int,int *) ;
 scalar_t__ system_state ;

__attribute__((used)) static enum ucode_state microcode_init_cpu(int cpu)
{
 enum ucode_state ustate;

 if (collect_cpu_info(cpu))
  return UCODE_ERROR;


 if (system_state != SYSTEM_RUNNING)
  return UCODE_NFOUND;

 ustate = microcode_ops->request_microcode_fw(cpu, &microcode_pdev->dev);

 if (ustate == UCODE_OK) {
  pr_debug("microcode: CPU%d updated upon init\n", cpu);
  apply_microcode_on_target(cpu);
 }

 return ustate;
}
