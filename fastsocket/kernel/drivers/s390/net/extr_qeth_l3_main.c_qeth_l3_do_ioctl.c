
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int guestlan; int type; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ info; } ;
struct qeth_arp_cache_entry {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct mii_ioctl_data {int reg_num; int phy_id; int val_out; } ;
struct TYPE_3__ {int ifru_data; int ifru_ivalue; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 int QETH_CARD_TYPE_OSD ;
 int QETH_CARD_TYPE_OSX ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int TRACE ;
 int capable (int ) ;
 int copy_from_user (struct qeth_arp_cache_entry*,int ,int) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int qeth_l3_arp_add_entry (struct qeth_card*,struct qeth_arp_cache_entry*) ;
 int qeth_l3_arp_flush_cache (struct qeth_card*) ;
 int qeth_l3_arp_query (struct qeth_card*,int ) ;
 int qeth_l3_arp_remove_entry (struct qeth_card*,struct qeth_arp_cache_entry*) ;
 int qeth_l3_arp_set_no_entries (struct qeth_card*,int ) ;
 int qeth_mdio_read (struct net_device*,int ,int ) ;
 int qeth_snmp_command (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l3_do_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct qeth_card *card = dev->ml_priv;
 struct qeth_arp_cache_entry arp_entry;
 struct mii_ioctl_data *mii_data;
 int rc = 0;

 if (!card)
  return -ENODEV;

 if ((card->state != CARD_STATE_UP) &&
  (card->state != CARD_STATE_SOFTSETUP))
  return -ENODEV;

 switch (cmd) {
 case 129:
  if (!capable(CAP_NET_ADMIN)) {
   rc = -EPERM;
   break;
  }
  rc = qeth_l3_arp_set_no_entries(card, rq->ifr_ifru.ifru_ivalue);
  break;
 case 131:
  if (!capable(CAP_NET_ADMIN)) {
   rc = -EPERM;
   break;
  }
  rc = qeth_l3_arp_query(card, rq->ifr_ifru.ifru_data);
  break;
 case 133:
  if (!capable(CAP_NET_ADMIN)) {
   rc = -EPERM;
   break;
  }
  if (copy_from_user(&arp_entry, rq->ifr_ifru.ifru_data,
       sizeof(struct qeth_arp_cache_entry)))
   rc = -EFAULT;
  else
   rc = qeth_l3_arp_add_entry(card, &arp_entry);
  break;
 case 130:
  if (!capable(CAP_NET_ADMIN)) {
   rc = -EPERM;
   break;
  }
  if (copy_from_user(&arp_entry, rq->ifr_ifru.ifru_data,
       sizeof(struct qeth_arp_cache_entry)))
   rc = -EFAULT;
  else
   rc = qeth_l3_arp_remove_entry(card, &arp_entry);
  break;
 case 132:
  if (!capable(CAP_NET_ADMIN)) {
   rc = -EPERM;
   break;
  }
  rc = qeth_l3_arp_flush_cache(card);
  break;
 case 134:
  rc = qeth_snmp_command(card, rq->ifr_ifru.ifru_data);
  break;
 case 128:
  if ((card->info.type == QETH_CARD_TYPE_OSD ||
       card->info.type == QETH_CARD_TYPE_OSX) &&
      !card->info.guestlan)
   return 1;
  return 0;
  break;
 case 136:
  mii_data = if_mii(rq);
  mii_data->phy_id = 0;
  break;
 case 135:
  mii_data = if_mii(rq);
  if (mii_data->phy_id != 0)
   rc = -EINVAL;
  else
   mii_data->val_out = qeth_mdio_read(dev,
       mii_data->phy_id,
       mii_data->reg_num);
  break;
 default:
  rc = -EOPNOTSUPP;
 }
 if (rc)
  QETH_DBF_TEXT_(TRACE, 2, "ioce%d", rc);
 return rc;
}
