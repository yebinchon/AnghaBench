
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int modprobe (scalar_t__) ;
 scalar_t__* module_list ;

__attribute__((used)) static void load_modules(void)
{
 int i;

 for (i = 0; module_list[i]; i++)
  modprobe(module_list[i]);
}
