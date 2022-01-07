
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct cpu_private* private; } ;
struct cpu_private {size_t type; int cpu; int file; } ;
struct TYPE_2__ {int flag; } ;






 int CPU_INDEX_BIT ;

 int EINVAL ;
 TYPE_1__* cpu_base ;
 int print_apic ;
 int print_cr ;
 int print_dr ;
 int print_dt ;
 int print_msr (struct seq_file*,int ,int) ;
 int print_tss ;
 int seq_printf (struct seq_file*,char*) ;
 int smp_call_function_single (int ,int ,struct seq_file*,int) ;

__attribute__((used)) static int cpu_seq_show(struct seq_file *seq, void *v)
{
 struct cpu_private *priv = seq->private;

 if (priv == ((void*)0))
  return -EINVAL;

 switch (cpu_base[priv->type].flag) {
 case 128:
  smp_call_function_single(priv->cpu, print_tss, seq, 1);
  break;
 case 131:
  smp_call_function_single(priv->cpu, print_cr, seq, 1);
  break;
 case 129:
  smp_call_function_single(priv->cpu, print_dt, seq, 1);
  break;
 case 130:
  if (priv->file == CPU_INDEX_BIT)
   smp_call_function_single(priv->cpu, print_dr, seq, 1);
  print_msr(seq, priv->cpu, cpu_base[priv->type].flag);
  break;
 case 132:
  if (priv->file == CPU_INDEX_BIT)
   smp_call_function_single(priv->cpu, print_apic, seq, 1);
  print_msr(seq, priv->cpu, cpu_base[priv->type].flag);
  break;

 default:
  print_msr(seq, priv->cpu, cpu_base[priv->type].flag);
  break;
 }
 seq_printf(seq, "\n");

 return 0;
}
