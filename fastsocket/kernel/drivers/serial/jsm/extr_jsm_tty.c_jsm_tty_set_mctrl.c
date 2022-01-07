
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct jsm_channel {TYPE_2__* ch_bd; int ch_mostat; } ;
struct TYPE_4__ {int pci_dev; TYPE_1__* bd_ops; } ;
struct TYPE_3__ {int (* assert_modem_signals ) (struct jsm_channel*) ;} ;


 int INFO ;
 int IOCTL ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int jsm_printk (int ,int ,int *,char*) ;
 int stub1 (struct jsm_channel*) ;
 int udelay (int) ;

__attribute__((used)) static void jsm_tty_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct jsm_channel *channel = (struct jsm_channel *)port;

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "start\n");

 if (mctrl & TIOCM_RTS)
  channel->ch_mostat |= UART_MCR_RTS;
 else
  channel->ch_mostat &= ~UART_MCR_RTS;

 if (mctrl & TIOCM_DTR)
  channel->ch_mostat |= UART_MCR_DTR;
 else
  channel->ch_mostat &= ~UART_MCR_DTR;

 channel->ch_bd->bd_ops->assert_modem_signals(channel);

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "finish\n");
 udelay(10);
}
