
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MIFCSR ;
 int MIFDELAY ;
 int bmwrite (struct net_device*,int ,int) ;

__attribute__((used)) static void
bmac_mif_writebits(struct net_device *dev, unsigned int val, int nb)
{
 int b;

 while (--nb >= 0) {
  b = (val & (1 << nb))? 6: 4;
  bmwrite(dev, MIFCSR, b);
  MIFDELAY;
  bmwrite(dev, MIFCSR, b|1);
  MIFDELAY;
 }
}
