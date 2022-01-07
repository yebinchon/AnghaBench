
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int phy_addr; } ;


 int BCM8704_USER_DEV3_ADDR ;
 int BCM8704_USER_OPT_DIGITAL_CTRL ;
 int USER_ODIG_CTRL_GPIOS ;
 int USER_ODIG_CTRL_GPIOS_SHIFT ;
 int USER_ODIG_CTRL_RESV2 ;
 int mdelay (int) ;
 int mdio_read (struct niu*,int ,int ,int ) ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;

__attribute__((used)) static int bcm8706_init_user_dev3(struct niu *np)
{
 int err;


 err = mdio_read(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
   BCM8704_USER_OPT_DIGITAL_CTRL);
 if (err < 0)
  return err;
 err &= ~USER_ODIG_CTRL_GPIOS;
 err |= (0x3 << USER_ODIG_CTRL_GPIOS_SHIFT);
 err |= USER_ODIG_CTRL_RESV2;
 err = mdio_write(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
    BCM8704_USER_OPT_DIGITAL_CTRL, err);
 if (err)
  return err;

 mdelay(1000);

 return 0;
}
