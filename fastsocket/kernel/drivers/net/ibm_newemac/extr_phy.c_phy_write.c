
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int address; int dev; int (* mdio_write ) (int ,int ,int,int) ;} ;


 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static inline void phy_write(struct mii_phy *phy, int reg, int val)
{
 phy->mdio_write(phy->dev, phy->address, reg, val);
}
