
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct nwpserial_port {TYPE_1__ port; } ;


 int PORT_UNKNOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nwpserial_mutex ;
 struct nwpserial_port* nwpserial_ports ;
 int nwpserial_reg ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

void nwpserial_unregister_port(int line)
{
 struct nwpserial_port *up = &nwpserial_ports[line];
 mutex_lock(&nwpserial_mutex);
 uart_remove_one_port(&nwpserial_reg, &up->port);

 up->port.type = PORT_UNKNOWN;

 mutex_unlock(&nwpserial_mutex);
}
