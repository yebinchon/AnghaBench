
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kimage {int control_code_page; int start; } ;
struct TYPE_9__ {int task; } ;
struct TYPE_6__ {scalar_t__ flags; int task; } ;
struct TYPE_8__ {TYPE_1__ thread_info; } ;
struct TYPE_7__ {int hpte_clear_all; } ;


 int crashing_cpu ;
 TYPE_5__* current_thread_info () ;
 int kexec_prepare_cpus () ;
 int kexec_sequence (TYPE_3__*,int ,struct kimage*,int ,int ) ;
 TYPE_3__ kexec_stack ;
 int page_address (int ) ;
 TYPE_2__ ppc_md ;

void default_machine_kexec(struct kimage *image)
{
 if (crashing_cpu == -1)
  kexec_prepare_cpus();




 kexec_stack.thread_info.task = current_thread_info()->task;
 kexec_stack.thread_info.flags = 0;




 kexec_sequence(&kexec_stack, image->start, image,
   page_address(image->control_code_page),
   ppc_md.hpte_clear_all);

}
