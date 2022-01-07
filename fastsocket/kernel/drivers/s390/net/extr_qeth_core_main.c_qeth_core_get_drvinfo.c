
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mcl_level; } ;
struct TYPE_4__ {scalar_t__ layer2; } ;
struct qeth_card {TYPE_1__ info; TYPE_2__ options; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* CARD_DDEV_ID (struct qeth_card*) ;
 char* CARD_RDEV_ID (struct qeth_card*) ;
 char* CARD_WDEV_ID (struct qeth_card*) ;
 int sprintf (int ,char*,char*,char*,char*) ;
 int strcpy (int ,char*) ;

void qeth_core_get_drvinfo(struct net_device *dev,
  struct ethtool_drvinfo *info)
{
 struct qeth_card *card = dev->ml_priv;
 if (card->options.layer2)
  strcpy(info->driver, "qeth_l2");
 else
  strcpy(info->driver, "qeth_l3");

 strcpy(info->version, "1.0");
 strcpy(info->fw_version, card->info.mcl_level);
 sprintf(info->bus_info, "%s/%s/%s",
   CARD_RDEV_ID(card),
   CARD_WDEV_ID(card),
   CARD_DDEV_ID(card));
}
