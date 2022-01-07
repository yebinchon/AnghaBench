
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipacmd_setadpparms {int dummy; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;


 int IPA_SETADP_QUERY_COMMANDS_SUPPORTED ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int) ;
 int qeth_query_setadapterparms_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

int qeth_query_setadapterparms(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(TRACE, 3, "queryadp");
 iob = qeth_get_adapter_cmd(card, IPA_SETADP_QUERY_COMMANDS_SUPPORTED,
       sizeof(struct qeth_ipacmd_setadpparms));
 rc = qeth_send_ipa_cmd(card, iob, qeth_query_setadapterparms_cb, ((void*)0));
 return rc;
}
