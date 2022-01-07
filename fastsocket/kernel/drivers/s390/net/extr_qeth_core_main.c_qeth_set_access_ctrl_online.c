
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ isolation; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct qeth_card {TYPE_4__* gdev; TYPE_3__ options; TYPE_1__ info; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_10__ {TYPE_2__ kobj; } ;
struct TYPE_9__ {TYPE_5__ dev; } ;


 int EOPNOTSUPP ;
 int IPA_SETADP_SET_ACCESS_CONTROL ;
 scalar_t__ ISOLATION_MODE_NONE ;
 scalar_t__ QETH_CARD_TYPE_OSD ;
 scalar_t__ QETH_CARD_TYPE_OSX ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int dev_err (TYPE_5__*,char*) ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_setadpparms_set_access_ctrl (struct qeth_card*,scalar_t__,int) ;

int qeth_set_access_ctrl_online(struct qeth_card *card, int fallback)
{
 int rc = 0;

 QETH_DBF_TEXT(TRACE, 4, "setactlo");

 if ((card->info.type == QETH_CARD_TYPE_OSD ||
      card->info.type == QETH_CARD_TYPE_OSX) &&
      qeth_adp_supported(card, IPA_SETADP_SET_ACCESS_CONTROL)) {
  rc = qeth_setadpparms_set_access_ctrl(card,
   card->options.isolation, fallback);
  if (rc) {
   QETH_DBF_MESSAGE(3,
    "IPA(SET_ACCESS_CTRL,%s,%d) sent failed\n",
    card->gdev->dev.kobj.name,
    rc);
   rc = -EOPNOTSUPP;
  }
 } else if (card->options.isolation != ISOLATION_MODE_NONE) {
  card->options.isolation = ISOLATION_MODE_NONE;

  dev_err(&card->gdev->dev, "Adapter does not "
   "support QDIO data connection isolation\n");
  rc = -EOPNOTSUPP;
 }
 return rc;
}
