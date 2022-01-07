
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_LEDS (int) ;
 int frv_cpu_core_sleep () ;
 int mb () ;

__attribute__((used)) static void core_sleep_idle(void)
{




 frv_cpu_core_sleep();




 mb();
}
