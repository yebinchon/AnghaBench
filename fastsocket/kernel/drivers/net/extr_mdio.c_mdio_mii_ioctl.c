
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_ioctl_data {int reg_num; int phy_id; int val_out; int val_in; } ;
struct mdio_if_info {int prtad; int mode_support; int mmds; int (* mdio_read ) (int ,int,int,int) ;int (* mdio_write ) (int ,int,int,int,int ) ;int dev; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_AN_LPA ;
 int MDIO_DEVAD_NONE ;
 int MDIO_DEVS_AN ;
 int MDIO_EMULATE_C22 ;
 int MDIO_MMD_AN ;
 int MDIO_PRTAD_NONE ;
 int MDIO_SUPPORTS_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int __ffs (int) ;
 int mdio_phy_id_devad (int) ;
 scalar_t__ mdio_phy_id_is_c45 (int) ;
 int mdio_phy_id_prtad (int) ;
 int stub1 (int ,int,int,int) ;
 int stub2 (int ,int,int,int,int ) ;

int mdio_mii_ioctl(const struct mdio_if_info *mdio,
     struct mii_ioctl_data *mii_data, int cmd)
{
 int prtad, devad;
 u16 addr = mii_data->reg_num;


 switch (cmd) {
 case 130:
  if (mdio->prtad == MDIO_PRTAD_NONE)
   return -EOPNOTSUPP;
  mii_data->phy_id = mdio->prtad;
  cmd = 129;
  break;
 case 129:
 case 128:
  break;
 default:
  return -EOPNOTSUPP;
 }


 if ((mdio->mode_support & MDIO_SUPPORTS_C45) &&
     mdio_phy_id_is_c45(mii_data->phy_id)) {
  prtad = mdio_phy_id_prtad(mii_data->phy_id);
  devad = mdio_phy_id_devad(mii_data->phy_id);
 } else if ((mdio->mode_support & MDIO_SUPPORTS_C22) &&
     mii_data->phy_id < 0x20) {
  prtad = mii_data->phy_id;
  devad = MDIO_DEVAD_NONE;
  addr &= 0x1f;
 } else if ((mdio->mode_support & MDIO_EMULATE_C22) &&
     mdio->prtad != MDIO_PRTAD_NONE &&
     mii_data->phy_id == mdio->prtad) {

  prtad = mdio->prtad;
  switch (addr) {
  case 135:
  case 134:
  case 132:
  case 131:
   devad = __ffs(mdio->mmds);
   break;
  case 136:
  case 133:
   if (!(mdio->mmds & MDIO_DEVS_AN))
    return -EINVAL;
   devad = MDIO_MMD_AN;
   if (addr == 136)
    addr = MDIO_AN_ADVERTISE;
   else
    addr = MDIO_AN_LPA;
   break;
  default:
   return -EINVAL;
  }
 } else {
  return -EINVAL;
 }

 if (cmd == 129) {
  int rc = mdio->mdio_read(mdio->dev, prtad, devad, addr);
  if (rc < 0)
   return rc;
  mii_data->val_out = rc;
  return 0;
 } else {
  return mdio->mdio_write(mdio->dev, prtad, devad, addr,
     mii_data->val_in);
 }
}
