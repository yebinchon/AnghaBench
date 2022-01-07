
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int CROSSOVER_MDI ;
 int MII_BMCR ;
 int mv88e1xxx_crossover_set (struct cphy*,int ) ;
 int simple_mdio_read (struct cphy*,int ,int*) ;
 int simple_mdio_write (struct cphy*,int ,int) ;

__attribute__((used)) static int mv88e1xxx_autoneg_disable(struct cphy *cphy)
{
 u32 ctl;





 (void) mv88e1xxx_crossover_set(cphy, CROSSOVER_MDI);





 (void) simple_mdio_read(cphy, MII_BMCR, &ctl);
 ctl &= ~BMCR_ANENABLE;
 (void) simple_mdio_write(cphy, MII_BMCR, ctl | BMCR_ANRESTART);
 return 0;
}
