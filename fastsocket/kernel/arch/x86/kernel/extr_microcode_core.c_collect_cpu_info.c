
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_cpu_info {int valid; int cpu_sig; } ;


 int collect_cpu_info_on_target (int,int *) ;
 int memset (struct ucode_cpu_info*,int ,int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static int collect_cpu_info(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
 int ret;

 memset(uci, 0, sizeof(*uci));

 ret = collect_cpu_info_on_target(cpu, &uci->cpu_sig);
 if (!ret)
  uci->valid = 1;

 return ret;
}
