
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MIFCSR ;
 int MIFDELAY ;
 int bmac_mif_writebits (struct net_device*,int,int) ;
 int bmwrite (struct net_device*,int ,int) ;

__attribute__((used)) static void
bmac_mif_write(struct net_device *dev, unsigned int addr, unsigned int val)
{
 bmwrite(dev, MIFCSR, 4);
 MIFDELAY;
 bmac_mif_writebits(dev, ~0U, 32);
 bmac_mif_writebits(dev, 5, 4);
 bmac_mif_writebits(dev, addr, 10);
 bmac_mif_writebits(dev, 2, 2);
 bmac_mif_writebits(dev, val, 16);
 bmac_mif_writebits(dev, 3, 2);
}
