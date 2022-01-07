
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int close_wait; int open_wait; int * ops; } ;
struct TYPE_3__ {int close_delay; int closing_wait; TYPE_2__ port; int port_write_mutex; int * rd; int magic; } ;
struct scc_port {TYPE_1__ gs; } ;


 int HZ ;
 int MUTEX ;
 int SCC_MAGIC ;
 int init_waitqueue_head (int *) ;
 int scc_port_ops ;
 struct scc_port* scc_ports ;
 int scc_real_driver ;
 int tty_port_init (TYPE_2__*) ;

__attribute__((used)) static void scc_init_portstructs(void)
{
 struct scc_port *port;
 int i;

 for (i = 0; i < 2; i++) {
  port = scc_ports + i;
  tty_port_init(&port->gs.port);
  port->gs.port.ops = &scc_port_ops;
  port->gs.magic = SCC_MAGIC;
  port->gs.close_delay = HZ/2;
  port->gs.closing_wait = 30 * HZ;
  port->gs.rd = &scc_real_driver;



  init_waitqueue_head(&port->gs.port.open_wait);
  init_waitqueue_head(&port->gs.port.close_wait);
 }
}
