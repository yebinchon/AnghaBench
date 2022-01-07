
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
struct qeth_arp_cache_entry {scalar_t__ ipaddr; } ;


 int EOPNOTSUPP ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_REMOVE_ENTRY ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,char*,int ,int ,int,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV4 ;
 int TRACE ;
 int memcpy (char*,struct qeth_arp_cache_entry*,int) ;
 int memset (char*,int ,int) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_arp_get_error_cause (int*) ;
 int qeth_l3_default_setassparms_cb ;
 struct qeth_cmd_buffer* qeth_l3_get_setassparms_cmd (struct qeth_card*,int ,int ,int,int ) ;
 int qeth_l3_ipaddr4_to_string (int *,char*) ;
 int qeth_l3_send_setassparms (struct qeth_card*,struct qeth_cmd_buffer*,int,unsigned long,int ,int *) ;

__attribute__((used)) static int qeth_l3_arp_remove_entry(struct qeth_card *card,
    struct qeth_arp_cache_entry *entry)
{
 struct qeth_cmd_buffer *iob;
 char buf[16] = {0, };
 int tmp;
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "arprment");






 if (card->info.guestlan)
  return -EOPNOTSUPP;
 if (!qeth_is_supported(card, IPA_ARP_PROCESSING)) {
  return -EOPNOTSUPP;
 }
 memcpy(buf, entry, 12);
 iob = qeth_l3_get_setassparms_cmd(card, IPA_ARP_PROCESSING,
           IPA_CMD_ASS_ARP_REMOVE_ENTRY,
           12,
           QETH_PROT_IPV4);
 rc = qeth_l3_send_setassparms(card, iob,
       12, (unsigned long)buf,
       qeth_l3_default_setassparms_cb, ((void*)0));
 if (rc) {
  tmp = rc;
  memset(buf, 0, 16);
  qeth_l3_ipaddr4_to_string((u8 *)entry->ipaddr, buf);
  QETH_DBF_MESSAGE(2, "Could not delete ARP entry for address %s"
   " on %s: %s (0x%x/%d)\n", buf, QETH_CARD_IFNAME(card),
   qeth_l3_arp_get_error_cause(&rc), tmp, tmp);
 }
 return rc;
}
