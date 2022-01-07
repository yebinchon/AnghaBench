
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;


 int DEBUG (int ,char*,struct net_device*) ;
 int PutByte (int ,int ) ;
 int SelectPage (int) ;
 int XIRCREG4_GPR1 ;

__attribute__((used)) static void
do_powerdown(struct net_device *dev)
{

    unsigned int ioaddr = dev->base_addr;

    DEBUG(0, "do_powerdown(%p)\n", dev);

    SelectPage(4);
    PutByte(XIRCREG4_GPR1, 0);
    SelectPage(0);
}
