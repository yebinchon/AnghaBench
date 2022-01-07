
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;


 int FLAGS_NOC ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8727_power_module(struct bnx2x *bp,
        struct bnx2x_phy *phy,
        u8 is_power_up) {

 u16 val;
 if (phy->flags & FLAGS_NOC)
  return;
 if (is_power_up)
  val = (1<<4);
 else



  val = (1<<1);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_GPIO_CTRL,
    val);
}
