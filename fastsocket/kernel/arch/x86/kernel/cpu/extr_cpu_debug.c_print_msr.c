
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct cpu_private* private; } ;
struct cpu_private {unsigned int cpu; unsigned int reg; scalar_t__ file; } ;


 int ARRAY_SIZE (int ) ;
 int cpu_reg_range ;
 int get_cpu_range (unsigned int,unsigned int*,unsigned int*,int,unsigned int) ;
 int print_cpu_data (struct seq_file*,unsigned int,int ,int ) ;
 scalar_t__ rdmsr_safe_on_cpu (unsigned int,unsigned int,int *,int *) ;

__attribute__((used)) static void print_msr(struct seq_file *seq, unsigned cpu, unsigned flag)
{
 unsigned msr, msr_min, msr_max;
 struct cpu_private *priv;
 u32 low, high;
 int i;

 if (seq) {
  priv = seq->private;
  if (priv->file) {
   if (!rdmsr_safe_on_cpu(priv->cpu, priv->reg,
            &low, &high))
    print_cpu_data(seq, priv->reg, low, high);
   return;
  }
 }

 for (i = 0; i < ARRAY_SIZE(cpu_reg_range); i++) {
  if (!get_cpu_range(cpu, &msr_min, &msr_max, i, flag))
   continue;

  for (msr = msr_min; msr <= msr_max; msr++) {
   if (rdmsr_safe_on_cpu(cpu, msr, &low, &high))
    continue;
   print_cpu_data(seq, msr, low, high);
  }
 }
}
