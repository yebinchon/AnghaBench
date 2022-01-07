
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_bits; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef int __u8 ;


 int IPA_CMD_DELVMAC ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int TRACE ;
 int qeth_l2_send_delmac_cb ;
 int qeth_l2_send_setdelmac (struct qeth_card*,int *,int ,int ) ;

__attribute__((used)) static int qeth_l2_send_delmac(struct qeth_card *card, __u8 *mac)
{
 QETH_DBF_TEXT(TRACE, 2, "L2Delmac");
 if (!(card->info.mac_bits & QETH_LAYER2_MAC_REGISTERED))
  return 0;
 return qeth_l2_send_setdelmac(card, mac, IPA_CMD_DELVMAC,
       qeth_l2_send_delmac_cb);
}
