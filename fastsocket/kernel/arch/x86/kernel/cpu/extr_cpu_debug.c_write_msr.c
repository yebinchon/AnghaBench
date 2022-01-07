
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cpu_private {int reg; int cpu; } ;


 int EPERM ;
 int wrmsr_safe_on_cpu (int ,int ,int,int) ;

__attribute__((used)) static int write_msr(struct cpu_private *priv, u64 val)
{
 u32 low, high;

 high = (val >> 32) & 0xffffffff;
 low = val & 0xffffffff;

 if (!wrmsr_safe_on_cpu(priv->cpu, priv->reg, low, high))
  return 0;

 return -EPERM;
}
