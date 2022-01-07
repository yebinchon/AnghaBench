
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct net_device*) ;
 int ENODEV ;
 int PutByte (int ,int) ;
 int SelectPage (int) ;
 int XIRCREG1_IMR0 ;
 int XIRCREG4_GPR1 ;
 int XIRCREG_CR ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
do_stop(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    local_info_t *lp = netdev_priv(dev);
    struct pcmcia_device *link = lp->p_dev;

    DEBUG(0, "do_stop(%p)\n", dev);

    if (!link)
 return -ENODEV;

    netif_stop_queue(dev);

    SelectPage(0);
    PutByte(XIRCREG_CR, 0);
    SelectPage(0x01);
    PutByte(XIRCREG1_IMR0, 0x00);
    SelectPage(4);
    PutByte(XIRCREG4_GPR1, 0);
    SelectPage(0);

    link->open--;
    return 0;
}
