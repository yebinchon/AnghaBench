
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_6__ {scalar_t__ return_code; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
struct TYPE_8__ {TYPE_3__ setadapterparms; } ;
struct TYPE_5__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_4__ data; TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;

int qeth_default_setadapterparms_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 4, "defadpcb");

 cmd = (struct qeth_ipa_cmd *) data;
 if (cmd->hdr.return_code == 0)
  cmd->hdr.return_code =
   cmd->data.setadapterparms.hdr.return_code;
 return 0;
}
