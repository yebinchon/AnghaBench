
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpu_private {scalar_t__ type; } ;


 scalar_t__ CPU_TSS_BIT ;
 int EPERM ;
 int strict_strtoull (char const*,int ,int *) ;
 int write_msr (struct cpu_private*,int ) ;

__attribute__((used)) static int write_cpu_register(struct cpu_private *priv, const char *buf)
{
 int ret = -EPERM;
 u64 val;

 ret = strict_strtoull(buf, 0, &val);
 if (ret < 0)
  return ret;


 if (priv->type < CPU_TSS_BIT)
  return write_msr(priv, val);

 return ret;
}
