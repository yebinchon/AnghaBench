
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int DP83865_INT_MASK_STATUS ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int ns_ack_interrupt(struct phy_device *phydev)
{
 int ret = phy_read(phydev, DP83865_INT_MASK_STATUS);
 if (ret < 0)
  return ret;

 return 0;
}
