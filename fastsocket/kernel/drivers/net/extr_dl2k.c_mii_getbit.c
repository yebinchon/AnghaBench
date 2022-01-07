
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {long base_addr; } ;


 int MII_CLK ;
 int MII_READ ;
 long PhyCtrl ;
 int mii_delay () ;
 int readb (long) ;
 int writeb (int,long) ;

__attribute__((used)) static int
mii_getbit (struct net_device *dev)
{
 long ioaddr = dev->base_addr + PhyCtrl;
 u8 data;

 data = (readb (ioaddr) & 0xf8) | MII_READ;
 writeb (data, ioaddr);
 mii_delay ();
 writeb (data | MII_CLK, ioaddr);
 mii_delay ();
 return ((readb (ioaddr) >> 1) & 1);
}
