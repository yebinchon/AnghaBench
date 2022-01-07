
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_c0_perfcontrol (int ) ;

__attribute__((used)) static void rm9000_cpu_stop(void *args)
{

 write_c0_perfcontrol(0);
}
