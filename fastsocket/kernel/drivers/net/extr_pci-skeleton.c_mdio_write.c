
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdrv_private {void* mmio_addr; } ;
struct net_device {int dummy; } ;


 int Config4 ;
 int DPRINTK (char*) ;
 int MDIO_CLK ;
 int MDIO_WRITE0 ;
 int MDIO_WRITE1 ;
 int mdio_delay () ;
 int mdio_sync (void*) ;
 int* mii_2_8139_map ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int readw (void*) ;
 int writeb (int,void*) ;
 int writew (int,void*) ;

__attribute__((used)) static void mdio_write (struct net_device *dev, int phy_id, int location,
   int value)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *mdio_addr = tp->mmio_addr + Config4;
 int mii_cmd =
     (0x5002 << 16) | (phy_id << 23) | (location << 18) | value;
 int i;

 DPRINTK ("ENTER\n");

 if (phy_id > 31) {
  if (location < 8 && mii_2_8139_map[location]) {
   writew (value,
    tp->mmio_addr + mii_2_8139_map[location]);
   readw (tp->mmio_addr + mii_2_8139_map[location]);
  }
  DPRINTK ("EXIT after directly using 8139 internal regs\n");
  return;
 }
 mdio_sync (mdio_addr);


 for (i = 31; i >= 0; i--) {
  int dataval =
      (mii_cmd & (1 << i)) ? MDIO_WRITE1 : MDIO_WRITE0;
  writeb (dataval, mdio_addr);
  mdio_delay ();
  writeb (dataval | MDIO_CLK, mdio_addr);
  mdio_delay ();
 }


 for (i = 2; i > 0; i--) {
  writeb (0, mdio_addr);
  mdio_delay ();
  writeb (MDIO_CLK, mdio_addr);
  mdio_delay ();
 }

 DPRINTK ("EXIT\n");
}
