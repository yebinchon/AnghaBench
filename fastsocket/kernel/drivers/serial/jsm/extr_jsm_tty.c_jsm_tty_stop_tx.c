
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct jsm_channel {TYPE_1__* ch_bd; int ch_flags; } ;
struct TYPE_2__ {int pci_dev; } ;


 int CH_STOP ;
 int INFO ;
 int IOCTL ;
 int jsm_printk (int ,int ,int *,char*) ;

__attribute__((used)) static void jsm_tty_stop_tx(struct uart_port *port)
{
 struct jsm_channel *channel = (struct jsm_channel *)port;

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "start\n");

 channel->ch_flags |= (CH_STOP);

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "finish\n");
}
