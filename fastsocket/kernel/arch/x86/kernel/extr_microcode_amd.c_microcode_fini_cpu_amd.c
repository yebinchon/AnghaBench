
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_cpu_info {int * mc; } ;


 struct ucode_cpu_info* ucode_cpu_info ;
 int vfree (int *) ;

__attribute__((used)) static void microcode_fini_cpu_amd(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

 vfree(uci->mc);
 uci->mc = ((void*)0);
}
