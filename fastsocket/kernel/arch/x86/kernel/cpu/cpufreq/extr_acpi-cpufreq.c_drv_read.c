
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drv_cmd {int mask; scalar_t__ val; } ;


 int cpumask_any (int ) ;
 int do_drv_read ;
 int smp_call_function_single (int ,int ,struct drv_cmd*,int) ;

__attribute__((used)) static void drv_read(struct drv_cmd *cmd)
{
 cmd->val = 0;

 smp_call_function_single(cpumask_any(cmd->mask), do_drv_read, cmd, 1);
}
