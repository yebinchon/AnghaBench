
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; } ;


 int mem_fclk_21285 ;
 TYPE_1__ serial21285_port ;

__attribute__((used)) static void serial21285_setup_ports(void)
{
 serial21285_port.uartclk = mem_fclk_21285 / 4;
}
