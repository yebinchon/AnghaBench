
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct mpsc_port_info {int tx_lock; } ;


 int mpsc_copy_tx_data (struct mpsc_port_info*) ;
 int mpsc_sdma_start_tx (struct mpsc_port_info*) ;
 int mpsc_unfreeze (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpsc_start_tx(struct uart_port *port)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
 unsigned long iflags;

 spin_lock_irqsave(&pi->tx_lock, iflags);

 mpsc_unfreeze(pi);
 mpsc_copy_tx_data(pi);
 mpsc_sdma_start_tx(pi);

 spin_unlock_irqrestore(&pi->tx_lock, iflags);

 pr_debug("mpsc_start_tx[%d]\n", port->line);
}
