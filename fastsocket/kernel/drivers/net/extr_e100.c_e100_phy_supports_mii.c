
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {scalar_t__ mdio_ctrl; } ;


 scalar_t__ mdio_ctrl_phy_mii_emulated ;

__attribute__((used)) static inline int e100_phy_supports_mii(struct nic *nic)
{



 return (nic->mdio_ctrl != mdio_ctrl_phy_mii_emulated);
}
