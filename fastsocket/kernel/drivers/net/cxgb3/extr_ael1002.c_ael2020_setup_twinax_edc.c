
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {scalar_t__ priv; int * phy_cache; } ;


 int EDC_TWX_AEL2020 ;
 int EDC_TWX_AEL2020_SIZE ;

 scalar_t__ edc_twinax ;
 int msleep (int) ;
 int set_phy_regs (struct cphy*,struct reg_val const*) ;
 int t3_get_edc_fw (struct cphy*,int ,int) ;
 int t3_mdio_write (struct cphy*,int const,int ,int ) ;

__attribute__((used)) static int ael2020_setup_twinax_edc(struct cphy *phy, int modtype)
{

 static const struct reg_val uCclock40MHz[] = {
  { 128, 0xff28, 0xffff, 0x4001 },
  { 128, 0xff2a, 0xffff, 0x0002 },
  { 0, 0, 0, 0 }
 };


 static const struct reg_val uCclockActivate[] = {
  { 128, 0xd000, 0xffff, 0x5200 },
  { 0, 0, 0, 0 }
 };


 static const struct reg_val uCactivate[] = {
  { 128, 0xd080, 0xffff, 0x0100 },
  { 128, 0xd092, 0xffff, 0x0000 },
  { 0, 0, 0, 0 }
 };
 int i, err;


 err = set_phy_regs(phy, uCclock40MHz);
 msleep(500);
 if (err)
  return err;
 err = set_phy_regs(phy, uCclockActivate);
 msleep(500);
 if (err)
  return err;

 if (phy->priv != edc_twinax)
  err = t3_get_edc_fw(phy, EDC_TWX_AEL2020,
        EDC_TWX_AEL2020_SIZE);
 if (err)
  return err;

 for (i = 0; i < EDC_TWX_AEL2020_SIZE / sizeof(u16) && !err; i += 2)
  err = t3_mdio_write(phy, 128,
        phy->phy_cache[i],
        phy->phy_cache[i + 1]);

 err = set_phy_regs(phy, uCactivate);
 if (!err)
  phy->priv = edc_twinax;
 return err;
}
