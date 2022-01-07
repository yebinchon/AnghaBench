
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int INTR_MASK ;
 int MDIO_DEVAD_NONE ;
 int VSC8211_INTR_ENABLE ;
 int t3_mdio_write (struct cphy*,int ,int ,int ) ;

__attribute__((used)) static int vsc8211_intr_enable(struct cphy *cphy)
{
 return t3_mdio_write(cphy, MDIO_DEVAD_NONE, VSC8211_INTR_ENABLE,
        INTR_MASK);
}
