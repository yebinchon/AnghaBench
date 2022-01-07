
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_gpio_cleanup (struct b43_wldev*) ;
 int b43_phy_exit (struct b43_wldev*) ;

__attribute__((used)) static void b43_chip_exit(struct b43_wldev *dev)
{
 b43_phy_exit(dev);
 b43_gpio_cleanup(dev);

}
