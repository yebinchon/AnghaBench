
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDIO_DATA_WRITE1 ;
 int MDIO_SHIFT_CLK ;
 unsigned int Wn4_PhysicalMgmt ;
 int outw (int,unsigned int) ;

__attribute__((used)) static void mdio_sync(unsigned int ioaddr, int bits)
{
 unsigned int mdio_addr = ioaddr + Wn4_PhysicalMgmt;


 while (-- bits >= 0) {
  outw(MDIO_DATA_WRITE1, mdio_addr);
  outw(MDIO_DATA_WRITE1 | MDIO_SHIFT_CLK, mdio_addr);
 }
}
