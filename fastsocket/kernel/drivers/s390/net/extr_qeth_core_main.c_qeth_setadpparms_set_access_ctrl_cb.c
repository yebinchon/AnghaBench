
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct qeth_set_access_ctrl {int subcmd_code; } ;
struct qeth_reply {scalar_t__ param; } ;
struct TYPE_14__ {int return_code; } ;
struct TYPE_12__ {struct qeth_set_access_ctrl set_access_ctrl; } ;
struct TYPE_15__ {TYPE_3__ hdr; TYPE_1__ data; } ;
struct TYPE_16__ {TYPE_4__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_5__ data; } ;
struct TYPE_18__ {int prev_isolation; int isolation; } ;
struct qeth_card {TYPE_7__ options; TYPE_6__* gdev; } ;
struct TYPE_13__ {int name; } ;
struct TYPE_19__ {TYPE_2__ kobj; } ;
struct TYPE_17__ {TYPE_8__ dev; } ;


 int ISOLATION_MODE_NONE ;
 int QETH_DBF_MESSAGE (int,char*,int,...) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,...) ;
 int SETUP ;
 int TRACE ;
 int dev_err (TYPE_8__*,char*) ;
 int dev_info (TYPE_8__*,char*) ;
 int dev_name (TYPE_8__*) ;
 int dev_warn (TYPE_8__*,char*) ;
 int qeth_default_setadapterparms_cb (struct qeth_card*,struct qeth_reply*,unsigned long) ;

__attribute__((used)) static int qeth_setadpparms_set_access_ctrl_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_set_access_ctrl *access_ctrl_req;
 int fallback = *(int *)reply->param;

 QETH_DBF_TEXT(TRACE, 4, "setaccb");

 cmd = (struct qeth_ipa_cmd *) data;
 access_ctrl_req = &cmd->data.setadapterparms.data.set_access_ctrl;
 QETH_DBF_TEXT_(SETUP, 2, "setaccb");
 QETH_DBF_TEXT_(SETUP, 2, "%s", card->gdev->dev.kobj.name);
 QETH_DBF_TEXT_(SETUP, 2, "rc=%d",
  cmd->data.setadapterparms.hdr.return_code);
 if (cmd->data.setadapterparms.hdr.return_code !=
      128)
  QETH_DBF_MESSAGE(3, "ERR:SET_ACCESS_CTRL(%s,%d)==%d\n",
    card->gdev->dev.kobj.name,
    access_ctrl_req->subcmd_code,
    cmd->data.setadapterparms.hdr.return_code);
 switch (cmd->data.setadapterparms.hdr.return_code) {
 case 128:
  if (card->options.isolation == ISOLATION_MODE_NONE) {
   dev_info(&card->gdev->dev,
       "QDIO data connection isolation is deactivated\n");
  } else {
   dev_info(&card->gdev->dev,
       "QDIO data connection isolation is activated\n");
  }
  break;
 case 134:
  QETH_DBF_MESSAGE(2, "%s QDIO data connection isolation already "
    "deactivated\n", dev_name(&card->gdev->dev));
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 135:
  QETH_DBF_MESSAGE(2, "%s QDIO data connection isolation already"
    " activated\n", dev_name(&card->gdev->dev));
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 132:
  dev_err(&card->gdev->dev, "Adapter does not "
   "support QDIO data connection isolation\n");
  break;
 case 133:
  dev_err(&card->gdev->dev,
   "Adapter is dedicated. "
   "QDIO data connection isolation not supported\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 136:
  dev_err(&card->gdev->dev,
   "TSO does not permit QDIO data connection isolation\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 129:
  dev_err(&card->gdev->dev, "The adjacent switch port does not "
   "support reflective relay mode\n");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 130:
  dev_err(&card->gdev->dev, "The reflective relay mode cannot be "
     "enabled at the adjacent switch port");
  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 case 131:
  dev_warn(&card->gdev->dev, "Turning off reflective relay mode "
     "at the adjacent switch failed\n");
  break;
 default:

  if (fallback)
   card->options.isolation = card->options.prev_isolation;
  break;
 }
 qeth_default_setadapterparms_cb(card, reply, (unsigned long) cmd);
 return 0;
}
