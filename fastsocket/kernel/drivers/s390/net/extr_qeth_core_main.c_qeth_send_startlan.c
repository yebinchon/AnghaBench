
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int IPA_CMD_STARTLAN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int ,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

int qeth_send_startlan(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(SETUP, 2, "strtlan");

 iob = qeth_get_ipacmd_buffer(card, IPA_CMD_STARTLAN, 0);
 rc = qeth_send_ipa_cmd(card, iob, ((void*)0), ((void*)0));
 return rc;
}
