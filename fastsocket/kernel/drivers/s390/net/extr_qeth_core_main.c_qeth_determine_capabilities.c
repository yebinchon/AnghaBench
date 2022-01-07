
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cq; } ;
struct TYPE_6__ {int qfmt; int qdioac1; int qdioac3; int icnt; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__* gdev; TYPE_3__ ssqd; } ;
struct ccw_device {int online; } ;
struct TYPE_4__ {int dev; } ;


 struct ccw_device* CARD_DDEV (struct qeth_card*) ;
 int CHSC_AC1_INITIATE_INPUTQ ;
 int CHSC_AC3_FORMAT2_CQ_AVAILABLE ;
 int QDIO_IQDIO_QFMT ;
 int QETH_CQ_NOTAVAILABLE ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int SETUP ;
 int ccw_device_set_offline (struct ccw_device*) ;
 int ccw_device_set_online (struct ccw_device*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int kfree (char*) ;
 int qdio_get_ssqd_desc (struct ccw_device*,TYPE_3__*) ;
 int qeth_configure_blkt_default (struct qeth_card*,char*) ;
 int qeth_configure_unitaddr (struct qeth_card*,char*) ;
 int qeth_read_conf_data (struct qeth_card*,void**,int*) ;

__attribute__((used)) static void qeth_determine_capabilities(struct qeth_card *card)
{
 int rc;
 int length;
 char *prcd;
 struct ccw_device *ddev;
 int ddev_offline = 0;

 QETH_DBF_TEXT(SETUP, 2, "detcapab");
 ddev = CARD_DDEV(card);
 if (!ddev->online) {
  ddev_offline = 1;
  rc = ccw_device_set_online(ddev);
  if (rc) {
   QETH_DBF_TEXT_(SETUP, 2, "3err%d", rc);
   goto out;
  }
 }

 rc = qeth_read_conf_data(card, (void **) &prcd, &length);
 if (rc) {
  QETH_DBF_MESSAGE(2, "%s qeth_read_conf_data returned %i\n",
   dev_name(&card->gdev->dev), rc);
  QETH_DBF_TEXT_(SETUP, 2, "5err%d", rc);
  goto out_offline;
 }
 qeth_configure_unitaddr(card, prcd);
 if (ddev_offline)
  qeth_configure_blkt_default(card, prcd);
 kfree(prcd);

 rc = qdio_get_ssqd_desc(ddev, &card->ssqd);
 if (rc)
  QETH_DBF_TEXT_(SETUP, 2, "6err%d", rc);

 QETH_DBF_TEXT_(SETUP, 2, "qfmt%d", card->ssqd.qfmt);
 QETH_DBF_TEXT_(SETUP, 2, "%d", card->ssqd.qdioac1);
 QETH_DBF_TEXT_(SETUP, 2, "%d", card->ssqd.qdioac3);
 QETH_DBF_TEXT_(SETUP, 2, "icnt%d", card->ssqd.icnt);
 if (!((card->ssqd.qfmt != QDIO_IQDIO_QFMT) ||
     ((card->ssqd.qdioac1 & CHSC_AC1_INITIATE_INPUTQ) == 0) ||
     ((card->ssqd.qdioac3 & CHSC_AC3_FORMAT2_CQ_AVAILABLE) == 0))) {
  dev_info(&card->gdev->dev,
   "Completion Queueing supported\n");
 } else {
  card->options.cq = QETH_CQ_NOTAVAILABLE;
 }


out_offline:
 if (ddev_offline == 1)
  ccw_device_set_offline(ddev);
out:
 return;
}
