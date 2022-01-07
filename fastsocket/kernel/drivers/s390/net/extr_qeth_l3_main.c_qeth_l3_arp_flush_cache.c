
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;


 int EOPNOTSUPP ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_FLUSH_CACHE ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 scalar_t__ QETH_CARD_TYPE_IQD ;
 int QETH_DBF_MESSAGE (int,char*,int ,int ,int,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_arp_get_error_cause (int*) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_arp_flush_cache(struct qeth_card *card)
{
 int rc;
 int tmp;

 QETH_DBF_TEXT(TRACE, 3, "arpflush");






 if (card->info.guestlan || (card->info.type == QETH_CARD_TYPE_IQD))
  return -EOPNOTSUPP;
 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  return -EOPNOTSUPP;
 }
 rc = qeth_l3_send_simple_setassparms(card, IPA_ARP_PROCESSING,
       IPA_CMD_ASS_ARP_FLUSH_CACHE, 0);
 if (rc) {
  tmp = rc;
  QETH_DBF_MESSAGE(2, "Could not flush ARP cache on %s: %s "
   "(0x%x/%d)\n", QETH_CARD_IFNAME(card),
   qeth_l3_arp_get_error_cause(&rc), tmp, tmp);
 }
 return rc;
}
