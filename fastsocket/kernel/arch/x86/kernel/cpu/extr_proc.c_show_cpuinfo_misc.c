
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cpuinfo_x86 {int cpuid_level; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void show_cpuinfo_misc(struct seq_file *m, struct cpuinfo_x86 *c)
{
 seq_printf(m,
     "fpu\t\t: yes\n"
     "fpu_exception\t: yes\n"
     "cpuid level\t: %d\n"
     "wp\t\t: yes\n",
     c->cpuid_level);
}
