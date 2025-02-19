
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_7__ {int mode; } ;
struct qeth_ipacmd_setadpparms {TYPE_3__ data; } ;
struct TYPE_5__ {scalar_t__ return_code; } ;
struct TYPE_8__ {struct qeth_ipacmd_setadpparms setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; TYPE_4__ data; } ;
struct TYPE_6__ {int promisc_mode; } ;
struct qeth_card {TYPE_2__ info; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,scalar_t__) ;
 int SET_PROMISC_MODE_OFF ;
 int TRACE ;
 int qeth_default_setadapterparms_cb (struct qeth_card*,struct qeth_reply*,unsigned long) ;

__attribute__((used)) static int qeth_setadp_promisc_mode_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 struct qeth_ipacmd_setadpparms *setparms;

 QETH_DBF_TEXT(TRACE, 4, "prmadpcb");

 cmd = (struct qeth_ipa_cmd *) data;
 setparms = &(cmd->data.setadapterparms);

 qeth_default_setadapterparms_cb(card, reply, (unsigned long)cmd);
 if (cmd->hdr.return_code) {
  QETH_DBF_TEXT_(TRACE, 4, "prmrc%2.2x", cmd->hdr.return_code);
  setparms->data.mode = SET_PROMISC_MODE_OFF;
 }
 card->info.promisc_mode = setparms->data.mode;
 return 0;
}
