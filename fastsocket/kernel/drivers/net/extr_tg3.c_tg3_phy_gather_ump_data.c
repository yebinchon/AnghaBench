
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_flags; } ;


 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_CTRL1000 ;
 int MII_LPA ;
 int MII_PHYADDR ;
 int MII_STAT1000 ;
 int TG3_PHYFLG_MII_SERDES ;
 int tg3_readphy (struct tg3*,int ,int*) ;

__attribute__((used)) static void tg3_phy_gather_ump_data(struct tg3 *tp, u32 *data)
{
 u32 reg, val;

 val = 0;
 if (!tg3_readphy(tp, MII_BMCR, &reg))
  val = reg << 16;
 if (!tg3_readphy(tp, MII_BMSR, &reg))
  val |= (reg & 0xffff);
 *data++ = val;

 val = 0;
 if (!tg3_readphy(tp, MII_ADVERTISE, &reg))
  val = reg << 16;
 if (!tg3_readphy(tp, MII_LPA, &reg))
  val |= (reg & 0xffff);
 *data++ = val;

 val = 0;
 if (!(tp->phy_flags & TG3_PHYFLG_MII_SERDES)) {
  if (!tg3_readphy(tp, MII_CTRL1000, &reg))
   val = reg << 16;
  if (!tg3_readphy(tp, MII_STAT1000, &reg))
   val |= (reg & 0xffff);
 }
 *data++ = val;

 if (!tg3_readphy(tp, MII_PHYADDR, &reg))
  val = reg << 16;
 else
  val = 0;
 *data++ = val;
}
