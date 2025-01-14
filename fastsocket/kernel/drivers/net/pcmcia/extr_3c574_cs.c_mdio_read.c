
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDIO_DATA_READ ;
 int MDIO_DATA_WRITE0 ;
 int MDIO_DATA_WRITE1 ;
 int MDIO_ENB_IN ;
 int MDIO_SHIFT_CLK ;
 unsigned int Wn4_PhysicalMgmt ;
 int inw (unsigned int) ;
 int mdio_sync (unsigned int,int) ;
 scalar_t__ mii_preamble_required ;
 int outw (int,unsigned int) ;

__attribute__((used)) static int mdio_read(unsigned int ioaddr, int phy_id, int location)
{
 int i;
 int read_cmd = (0xf6 << 10) | (phy_id << 5) | location;
 unsigned int retval = 0;
 unsigned int mdio_addr = ioaddr + Wn4_PhysicalMgmt;

 if (mii_preamble_required)
  mdio_sync(ioaddr, 32);


 for (i = 14; i >= 0; i--) {
  int dataval = (read_cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
  outw(dataval, mdio_addr);
  outw(dataval | MDIO_SHIFT_CLK, mdio_addr);
 }

 for (i = 19; i > 0; i--) {
  outw(MDIO_ENB_IN, mdio_addr);
  retval = (retval << 1) | ((inw(mdio_addr) & MDIO_DATA_READ) ? 1 : 0);
  outw(MDIO_ENB_IN | MDIO_SHIFT_CLK, mdio_addr);
 }
 return (retval>>1) & 0xffff;
}
