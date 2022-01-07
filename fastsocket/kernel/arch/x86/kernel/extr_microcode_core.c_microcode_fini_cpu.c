
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucode_cpu_info {scalar_t__ valid; } ;
struct TYPE_2__ {int (* microcode_fini_cpu ) (int) ;} ;


 TYPE_1__* microcode_ops ;
 int stub1 (int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static void microcode_fini_cpu(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

 microcode_ops->microcode_fini_cpu(cpu);
 uci->valid = 0;
}
