
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * cpu_state_attr ;
 int cpu_sysdev_class ;
 int sysdev_class_create_file (int *,int ) ;

__attribute__((used)) static int cpu_states_init(void)
{
 int i;
 int err = 0;

 for (i = 0; i < ARRAY_SIZE(cpu_state_attr); i++) {
  int ret;
  ret = sysdev_class_create_file(&cpu_sysdev_class,
      cpu_state_attr[i]);
  if (!err)
   err = ret;
 }
 return err;
}
