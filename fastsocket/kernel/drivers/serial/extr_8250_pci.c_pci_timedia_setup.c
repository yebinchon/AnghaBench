
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {unsigned int first_offset; unsigned int uart_offset; int reg_shift; } ;


 int setup_port (struct serial_private*,struct uart_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
pci_timedia_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_port *port, int idx)
{
 unsigned int bar = 0, offset = board->first_offset;

 switch (idx) {
 case 0:
  bar = 0;
  break;
 case 1:
  offset = board->uart_offset;
  bar = 0;
  break;
 case 2:
  bar = 1;
  break;
 case 3:
  offset = board->uart_offset;

 case 4:
 case 5:
 case 6:
 case 7:
  bar = idx - 2;
 }

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
