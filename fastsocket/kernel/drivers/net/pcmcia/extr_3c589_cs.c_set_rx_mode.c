
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {unsigned int base_addr; int flags; scalar_t__ mc_count; } ;


 scalar_t__ EL3_CMD ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RxBroadcast ;
 int RxMulticast ;
 int RxProm ;
 int RxStation ;
 int SetRxFilter ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    u16 opts = SetRxFilter | RxStation | RxBroadcast;

    if (dev->flags & IFF_PROMISC)
 opts |= RxMulticast | RxProm;
    else if (dev->mc_count || (dev->flags & IFF_ALLMULTI))
 opts |= RxMulticast;
    outw(opts, ioaddr + EL3_CMD);
}
