
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {long base_addr; } ;


 int MII_CLK ;
 int MII_DATA1 ;
 int MII_WRITE ;
 long PhyCtrl ;
 int mii_delay () ;
 int readb (long) ;
 int writeb (int,long) ;

__attribute__((used)) static void
mii_sendbit (struct net_device *dev, u32 data)
{
 long ioaddr = dev->base_addr + PhyCtrl;
 data = (data) ? MII_DATA1 : 0;
 data |= MII_WRITE;
 data |= (readb (ioaddr) & 0xf8) | MII_WRITE;
 writeb (data, ioaddr);
 mii_delay ();
 writeb (data | MII_CLK, ioaddr);
 mii_delay ();
}
