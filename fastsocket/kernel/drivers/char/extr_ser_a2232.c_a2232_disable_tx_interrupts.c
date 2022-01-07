
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct a2232status {int OutDisable; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct a2232_port {TYPE_2__ gs; int which_port_on_a2232; int which_a2232; } ;


 int GS_TX_INTEN ;
 struct a2232status* a2232stat (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void a2232_disable_tx_interrupts(void *ptr)
{
 struct a2232_port *port;
 volatile struct a2232status *stat;
 unsigned long flags;

 port = ptr;
 stat = a2232stat(port->which_a2232, port->which_port_on_a2232);
 stat->OutDisable = -1;


 local_irq_save(flags);
 port->gs.port.flags &= ~GS_TX_INTEN;
 local_irq_restore(flags);
}
