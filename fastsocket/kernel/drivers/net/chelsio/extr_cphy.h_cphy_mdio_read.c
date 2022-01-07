
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mdio_read ) (int ,int ,int,int) ;int prtad; int dev; } ;
struct cphy {TYPE_1__ mdio; } ;


 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static inline int cphy_mdio_read(struct cphy *cphy, int mmd, int reg,
     unsigned int *valp)
{
 int rc = cphy->mdio.mdio_read(cphy->mdio.dev, cphy->mdio.prtad, mmd,
          reg);
 *valp = (rc >= 0) ? rc : -1;
 return (rc >= 0) ? 0 : rc;
}
