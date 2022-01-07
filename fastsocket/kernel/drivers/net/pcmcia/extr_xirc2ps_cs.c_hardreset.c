
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {unsigned int base_addr; } ;
struct TYPE_3__ {scalar_t__ mohawk; } ;
typedef TYPE_1__ local_info_t ;


 int PutByte (int ,int) ;
 int SelectPage (int) ;
 int XIRCREG4_GPR1 ;
 int msleep (int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void
hardreset(struct net_device *dev)
{
    local_info_t *local = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;

    SelectPage(4);
    udelay(1);
    PutByte(XIRCREG4_GPR1, 0);
    msleep(40);
    if (local->mohawk)
 PutByte(XIRCREG4_GPR1, 1);
    else
 PutByte(XIRCREG4_GPR1, 1 | 4);
    msleep(20);
}
