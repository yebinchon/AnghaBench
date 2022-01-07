
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_phy_initn (struct b43_wldev*) ;

__attribute__((used)) static int b43_nphy_op_init(struct b43_wldev *dev)
{
 return b43_phy_initn(dev);
}
