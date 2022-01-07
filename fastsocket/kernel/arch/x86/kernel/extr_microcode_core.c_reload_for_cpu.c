
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucode_cpu_info {scalar_t__ valid; } ;
typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;
struct TYPE_4__ {int (* request_microcode_fw ) (int,int *) ;} ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int UCODE_ERROR ;
 int UCODE_OK ;
 int apply_microcode_on_target (int) ;
 int microcode_mutex ;
 TYPE_2__* microcode_ops ;
 TYPE_1__* microcode_pdev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int,int *) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static int reload_for_cpu(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
 int err = 0;

 mutex_lock(&microcode_mutex);
 if (uci->valid) {
  enum ucode_state ustate;

  ustate = microcode_ops->request_microcode_fw(cpu, &microcode_pdev->dev);
  if (ustate == UCODE_OK)
   apply_microcode_on_target(cpu);
  else
   if (ustate == UCODE_ERROR)
    err = -EINVAL;
 }
 mutex_unlock(&microcode_mutex);

 return err;
}
