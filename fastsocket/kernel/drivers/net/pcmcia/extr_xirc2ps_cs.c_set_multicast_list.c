
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; int flags; int mc_count; } ;


 unsigned int EnableRecv ;
 int GetByte (int ) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 unsigned int Offline ;
 unsigned int Online ;
 int PutByte (int ,unsigned int) ;
 int SelectPage (int) ;
 int XIRCREG40_CMD0 ;
 int XIRCREG42_SWC1 ;
 int set_addresses (struct net_device*) ;

__attribute__((used)) static void
set_multicast_list(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    unsigned value;

    SelectPage(0x42);
    value = GetByte(XIRCREG42_SWC1) & 0xC0;

    if (dev->flags & IFF_PROMISC) {
 PutByte(XIRCREG42_SWC1, value | 0x06);
    } else if (dev->mc_count > 9 || (dev->flags & IFF_ALLMULTI)) {
 PutByte(XIRCREG42_SWC1, value | 0x02);
    } else if (dev->mc_count) {

 PutByte(XIRCREG42_SWC1, value | 0x01);
 SelectPage(0x40);
 PutByte(XIRCREG40_CMD0, Offline);
 set_addresses(dev);
 SelectPage(0x40);
 PutByte(XIRCREG40_CMD0, EnableRecv | Online);
    } else {
 PutByte(XIRCREG42_SWC1, value | 0x00);
    }
    SelectPage(0);
}
