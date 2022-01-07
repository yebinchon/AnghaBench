
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_2__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_1__ hdr; } ;
struct qeth_card {int dummy; } ;
typedef scalar_t__ __u16 ;


 int QETH_DBF_TEXT_ (int ,int,char*,scalar_t__) ;
 int SETUP ;

__attribute__((used)) static int qeth_hw_trap_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;
 __u16 rc;

 cmd = (struct qeth_ipa_cmd *)data;
 rc = cmd->hdr.return_code;
 if (rc)
  QETH_DBF_TEXT_(SETUP, 2, "trapc:%x", rc);
 return 0;
}
