
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;


 TYPE_1__ reg ;
 int write_c0_perfcontrol (int ) ;

__attribute__((used)) static void rm9000_cpu_start(void *args)
{

 write_c0_perfcontrol(reg.control);
}
