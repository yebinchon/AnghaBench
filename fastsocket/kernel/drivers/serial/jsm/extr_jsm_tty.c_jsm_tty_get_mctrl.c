
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct jsm_channel {TYPE_1__* ch_bd; } ;
struct TYPE_2__ {int pci_dev; } ;


 unsigned int ENXIO ;
 int INFO ;
 int IOCTL ;
 int jsm_get_mstat (struct jsm_channel*) ;
 int jsm_printk (int ,int ,int *,char*) ;

__attribute__((used)) static unsigned int jsm_tty_get_mctrl(struct uart_port *port)
{
 int result;
 struct jsm_channel *channel = (struct jsm_channel *)port;

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "start\n");

 result = jsm_get_mstat(channel);

 if (result < 0)
  return -ENXIO;

 jsm_printk(IOCTL, INFO, &channel->ch_bd->pci_dev, "finish\n");

 return result;
}
