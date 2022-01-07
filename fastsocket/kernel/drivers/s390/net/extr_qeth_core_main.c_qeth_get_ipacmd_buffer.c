
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipa_cmd {int dummy; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {int write; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef enum qeth_ipa_cmds { ____Placeholder_qeth_ipa_cmds } qeth_ipa_cmds ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int qeth_fill_ipacmd_header (struct qeth_card*,struct qeth_ipa_cmd*,int,int) ;
 struct qeth_cmd_buffer* qeth_wait_for_buffer (int *) ;

struct qeth_cmd_buffer *qeth_get_ipacmd_buffer(struct qeth_card *card,
  enum qeth_ipa_cmds ipacmd, enum qeth_prot_versions prot)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 iob = qeth_wait_for_buffer(&card->write);
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 qeth_fill_ipacmd_header(card, cmd, ipacmd, prot);

 return iob;
}
