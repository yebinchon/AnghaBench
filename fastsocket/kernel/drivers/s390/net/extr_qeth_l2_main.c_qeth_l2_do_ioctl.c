
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int guestlan; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ info; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct mii_ioctl_data {int reg_num; int phy_id; int val_out; } ;
struct TYPE_3__ {int ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;


 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ QETH_CARD_TYPE_OSD ;
 scalar_t__ QETH_CARD_TYPE_OSM ;
 scalar_t__ QETH_CARD_TYPE_OSN ;
 scalar_t__ QETH_CARD_TYPE_OSX ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;




 int TRACE ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int qeth_mdio_read (struct net_device*,int ,int ) ;
 int qeth_snmp_command (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l2_do_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct qeth_card *card = dev->ml_priv;
 struct mii_ioctl_data *mii_data;
 int rc = 0;

 if (!card)
  return -ENODEV;

 if ((card->state != CARD_STATE_UP) &&
  (card->state != CARD_STATE_SOFTSETUP))
  return -ENODEV;

 if (card->info.type == QETH_CARD_TYPE_OSN)
  return -EPERM;

 switch (cmd) {
 case 129:
  rc = qeth_snmp_command(card, rq->ifr_ifru.ifru_data);
  break;
 case 128:
  if ((card->info.type == QETH_CARD_TYPE_OSD ||
       card->info.type == QETH_CARD_TYPE_OSM ||
       card->info.type == QETH_CARD_TYPE_OSX) &&
      !card->info.guestlan)
   return 1;
  return 0;
  break;
 case 131:
  mii_data = if_mii(rq);
  mii_data->phy_id = 0;
  break;
 case 130:
  mii_data = if_mii(rq);
  if (mii_data->phy_id != 0)
   rc = -EINVAL;
  else
   mii_data->val_out = qeth_mdio_read(dev,
    mii_data->phy_id, mii_data->reg_num);
  break;
 default:
  rc = -EOPNOTSUPP;
 }
 if (rc)
  QETH_DBF_TEXT_(TRACE, 2, "ioce%d", rc);
 return rc;
}
