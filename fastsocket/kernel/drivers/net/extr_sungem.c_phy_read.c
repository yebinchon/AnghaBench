
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gem {int mii_phy_addr; } ;


 int __phy_read (struct gem*,int ,int) ;

__attribute__((used)) static inline u16 phy_read(struct gem *gp, int reg)
{
 return __phy_read(gp, gp->mii_phy_addr, reg);
}
