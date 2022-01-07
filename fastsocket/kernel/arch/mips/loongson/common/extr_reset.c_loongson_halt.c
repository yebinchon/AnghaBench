
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_prepare_shutdown () ;

__attribute__((used)) static void loongson_halt(void)
{
 mach_prepare_shutdown();
 while (1)
  ;
}
