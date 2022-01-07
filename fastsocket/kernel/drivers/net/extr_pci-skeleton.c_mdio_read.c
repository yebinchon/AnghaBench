
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdrv_private {void* mmio_addr; } ;
struct net_device {int dummy; } ;


 int Config4 ;
 int DPRINTK (char*,...) ;
 int MDIO_CLK ;
 int MDIO_DATA_IN ;
 int MDIO_DATA_OUT ;
 int MDIO_DIR ;
 int mdio_delay () ;
 int mdio_sync (void*) ;
 int* mii_2_8139_map ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int readb (void*) ;
 int readw (void*) ;
 int writeb (int,void*) ;

__attribute__((used)) static int mdio_read (struct net_device *dev, int phy_id, int location)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *mdio_addr = tp->mmio_addr + Config4;
 int mii_cmd = (0xf6 << 10) | (phy_id << 5) | location;
 int retval = 0;
 int i;

 DPRINTK ("ENTER\n");

 if (phy_id > 31) {
  DPRINTK ("EXIT after directly using 8139 internal regs\n");
  return location < 8 && mii_2_8139_map[location] ?
      readw (tp->mmio_addr + mii_2_8139_map[location]) : 0;
 }
 mdio_sync (mdio_addr);

 for (i = 15; i >= 0; i--) {
  int dataval = (mii_cmd & (1 << i)) ? MDIO_DATA_OUT : 0;

  writeb (MDIO_DIR | dataval, mdio_addr);
  mdio_delay ();
  writeb (MDIO_DIR | dataval | MDIO_CLK, mdio_addr);
  mdio_delay ();
 }


 for (i = 19; i > 0; i--) {
  writeb (0, mdio_addr);
  mdio_delay ();
  retval =
      (retval << 1) | ((readb (mdio_addr) & MDIO_DATA_IN) ? 1
         : 0);
  writeb (MDIO_CLK, mdio_addr);
  mdio_delay ();
 }

 DPRINTK ("EXIT, returning %d\n", (retval >> 1) & 0xffff);
 return (retval >> 1) & 0xffff;
}
