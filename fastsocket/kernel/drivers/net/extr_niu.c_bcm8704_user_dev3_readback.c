
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int phy_addr; } ;


 int BCM8704_USER_DEV3_ADDR ;
 int mdio_read (struct niu*,int ,int ,int) ;

__attribute__((used)) static int bcm8704_user_dev3_readback(struct niu *np, int reg)
{
 int err = mdio_read(np, np->phy_addr, BCM8704_USER_DEV3_ADDR, reg);
 if (err < 0)
  return err;
 err = mdio_read(np, np->phy_addr, BCM8704_USER_DEV3_ADDR, reg);
 if (err < 0)
  return err;
 return 0;
}
