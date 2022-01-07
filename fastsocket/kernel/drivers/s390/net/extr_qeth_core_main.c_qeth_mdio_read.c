
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_errors; } ;
struct TYPE_3__ {int link_type; } ;
struct qeth_card {TYPE_2__ stats; TYPE_1__ info; } ;
struct net_device {int* dev_addr; struct qeth_card* ml_priv; } ;


 int ADVERTISE_ALL ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMSR_100BASE4 ;
 int BMSR_100FULL ;
 int BMSR_100HALF ;
 int BMSR_10FULL ;
 int BMSR_10HALF ;
 int BMSR_ANEGCOMPLETE ;
 int BMSR_ERCAP ;
 int BMSR_LSTATUS ;
 int LPA_100BASE4 ;
 int LPA_100FULL ;
 int LPA_100HALF ;
 int LPA_10FULL ;
 int LPA_10HALF ;
 int LPA_LPACK ;
 int QETH_LINK_TYPE_10GBIT_ETH ;
 int QETH_LINK_TYPE_GBIT_ETH ;
 int QETH_LINK_TYPE_OSN ;

int qeth_mdio_read(struct net_device *dev, int phy_id, int regnum)
{
 struct qeth_card *card = dev->ml_priv;
 int rc = 0;

 switch (regnum) {
 case 144:
  rc = BMCR_FULLDPLX;
  if ((card->info.link_type != QETH_LINK_TYPE_GBIT_ETH) &&
      (card->info.link_type != QETH_LINK_TYPE_OSN) &&
      (card->info.link_type != QETH_LINK_TYPE_10GBIT_ETH))
   rc |= BMCR_SPEED100;
  break;
 case 143:
  rc = BMSR_ERCAP | BMSR_ANEGCOMPLETE | BMSR_LSTATUS |
       BMSR_10HALF | BMSR_10FULL | BMSR_100HALF | BMSR_100FULL |
       BMSR_100BASE4;
  break;
 case 134:
  rc = (dev->dev_addr[0] << 16) | (dev->dev_addr[1] << 8) |
       dev->dev_addr[2];
  rc = (rc >> 5) & 0xFFFF;
  break;
 case 133:
  rc = (dev->dev_addr[2] << 10) & 0xFFFF;
  break;
 case 145:
  rc = ADVERTISE_ALL;
  break;
 case 138:
  rc = LPA_10HALF | LPA_10FULL | LPA_100HALF | LPA_100FULL |
       LPA_100BASE4 | LPA_LPACK;
  break;
 case 141:
  break;
 case 142:
  break;
 case 140:
  break;
 case 136:
  break;
 case 132:
  rc = card->stats.rx_errors;
  break;
 case 129:
  break;
 case 131:
  break;
 case 139:
  break;
 case 135:
  break;
 case 130:
  break;
 case 128:
  break;
 case 137:
  break;
 default:
  break;
 }
 return rc;
}
