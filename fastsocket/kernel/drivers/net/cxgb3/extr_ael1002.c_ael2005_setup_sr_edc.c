
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {scalar_t__ priv; int * phy_cache; } ;


 int EDC_OPT_AEL2005 ;
 int EDC_OPT_AEL2005_SIZE ;

 scalar_t__ edc_sr ;
 int msleep (int) ;
 int set_phy_regs (struct cphy*,struct reg_val const*) ;
 int t3_get_edc_fw (struct cphy*,int ,int) ;
 int t3_mdio_write (struct cphy*,int const,int ,int ) ;

__attribute__((used)) static int ael2005_setup_sr_edc(struct cphy *phy)
{
 static const struct reg_val regs[] = {
  { 128, 0xc003, 0xffff, 0x181 },
  { 128, 0xc010, 0xffff, 0x448a },
  { 128, 0xc04a, 0xffff, 0x5200 },
  { 0, 0, 0, 0 }
 };

 int i, err;

 err = set_phy_regs(phy, regs);
 if (err)
  return err;

 msleep(50);

 if (phy->priv != edc_sr)
  err = t3_get_edc_fw(phy, EDC_OPT_AEL2005,
        EDC_OPT_AEL2005_SIZE);
 if (err)
  return err;

 for (i = 0; i < EDC_OPT_AEL2005_SIZE / sizeof(u16) && !err; i += 2)
  err = t3_mdio_write(phy, 128,
        phy->phy_cache[i],
        phy->phy_cache[i + 1]);
 if (!err)
  phy->priv = edc_sr;
 return err;
}
