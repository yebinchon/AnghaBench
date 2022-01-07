
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct serial_private {TYPE_1__* dev; } ;
struct pciserial_board {int reg_shift; } ;
struct TYPE_2__ {int subsystem_device; } ;


 int pci_default_setup (struct serial_private*,struct pciserial_board const*,struct uart_port*,int) ;
 int setup_port (struct serial_private*,struct uart_port*,unsigned int,int ,int ) ;

__attribute__((used)) static int pci_netmos_9900_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_port *port, int idx)
{
 unsigned int bar;

 if ((priv->dev->subsystem_device & 0xff00) == 0x3000) {



  bar = 3 * idx;

  return setup_port(priv, port, bar, 0, board->reg_shift);
 } else {
  return pci_default_setup(priv, board, port, idx);
 }
}
