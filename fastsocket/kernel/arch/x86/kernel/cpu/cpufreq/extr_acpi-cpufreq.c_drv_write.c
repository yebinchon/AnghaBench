
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drv_cmd {int mask; } ;


 scalar_t__ cpumask_test_cpu (int,int ) ;
 int do_drv_write (struct drv_cmd*) ;
 int get_cpu () ;
 int put_cpu () ;
 int smp_call_function_many (int ,int (*) (struct drv_cmd*),struct drv_cmd*,int) ;

__attribute__((used)) static void drv_write(struct drv_cmd *cmd)
{
 int this_cpu;

 this_cpu = get_cpu();
 if (cpumask_test_cpu(this_cpu, cmd->mask))
  do_drv_write(cmd);
 smp_call_function_many(cmd->mask, do_drv_write, cmd, 1);
 put_cpu();
}
