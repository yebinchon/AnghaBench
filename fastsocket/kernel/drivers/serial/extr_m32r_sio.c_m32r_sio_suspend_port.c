
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;


 TYPE_1__* m32r_sio_ports ;
 int m32r_sio_reg ;
 int uart_suspend_port (int *,int *) ;

void m32r_sio_suspend_port(int line)
{
 uart_suspend_port(&m32r_sio_reg, &m32r_sio_ports[line].port);
}
