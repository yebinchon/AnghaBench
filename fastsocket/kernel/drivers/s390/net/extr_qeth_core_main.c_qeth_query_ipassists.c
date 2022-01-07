
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int IPA_CMD_QIPASSIST ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int SETUP ;
 struct qeth_cmd_buffer* qeth_get_ipacmd_buffer (struct qeth_card*,int ,int) ;
 int qeth_query_ipassists_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

int qeth_query_ipassists(struct qeth_card *card, enum qeth_prot_versions prot)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT_(SETUP, 2, "qipassi%i", prot);
 iob = qeth_get_ipacmd_buffer(card, IPA_CMD_QIPASSIST, prot);
 rc = qeth_send_ipa_cmd(card, iob, qeth_query_ipassists_cb, ((void*)0));
 return rc;
}
