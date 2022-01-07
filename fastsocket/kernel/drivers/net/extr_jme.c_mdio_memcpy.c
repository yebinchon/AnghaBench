
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int jme_mdio_read (int ,int ,int) ;

__attribute__((used)) static void
mdio_memcpy(struct jme_adapter *jme, u32 *p, int reg_nr)
{
 int i;
 u16 *p16 = (u16 *)p;

 for (i = 0 ; i < reg_nr ; ++i)
  p16[i] = jme_mdio_read(jme->dev, jme->mii_if.phy_id, i);
}
