
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
typedef int __u8 ;


 int IPA_CMD_SETGMAC ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_l2_send_setdelmac (struct qeth_card*,int *,int ,int ) ;
 int qeth_l2_send_setgroupmac_cb ;

__attribute__((used)) static int qeth_l2_send_setgroupmac(struct qeth_card *card, __u8 *mac)
{
 QETH_DBF_TEXT(TRACE, 2, "L2Sgmac");
 return qeth_l2_send_setdelmac(card, mac, IPA_CMD_SETGMAC,
       qeth_l2_send_setgroupmac_cb);
}
