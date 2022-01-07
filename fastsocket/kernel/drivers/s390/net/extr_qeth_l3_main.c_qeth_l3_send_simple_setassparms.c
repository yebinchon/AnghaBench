
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;
typedef int __u32 ;
typedef int __u16 ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int qeth_l3_default_setassparms_cb ;
 struct qeth_cmd_buffer* qeth_l3_get_setassparms_cmd (struct qeth_card*,int,int ,int,int ) ;
 int qeth_l3_send_setassparms (struct qeth_card*,struct qeth_cmd_buffer*,int,long,int ,int *) ;

__attribute__((used)) static int qeth_l3_send_simple_setassparms(struct qeth_card *card,
  enum qeth_ipa_funcs ipa_func, __u16 cmd_code, long data)
{
 int rc;
 int length = 0;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(TRACE, 4, "simassp4");
 if (data)
  length = sizeof(__u32);
 iob = qeth_l3_get_setassparms_cmd(card, ipa_func, cmd_code,
           length, QETH_PROT_IPV4);
 rc = qeth_l3_send_setassparms(card, iob, length, data,
       qeth_l3_default_setassparms_cb, ((void*)0));
 return rc;
}
