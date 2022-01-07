
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_phy_initg (struct b43_wldev*) ;

__attribute__((used)) static int b43_gphy_op_init(struct b43_wldev *dev)
{
 b43_phy_initg(dev);

 return 0;
}
