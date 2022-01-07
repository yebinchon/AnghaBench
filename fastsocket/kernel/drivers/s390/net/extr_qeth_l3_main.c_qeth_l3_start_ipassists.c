
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int EIO ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_l3_start_ipa_arp_processing (struct qeth_card*) ;
 int qeth_l3_start_ipa_broadcast (struct qeth_card*) ;
 int qeth_l3_start_ipa_checksum (struct qeth_card*) ;
 int qeth_l3_start_ipa_ip_fragmentation (struct qeth_card*) ;
 int qeth_l3_start_ipa_ipv6 (struct qeth_card*) ;
 int qeth_l3_start_ipa_multicast (struct qeth_card*) ;
 int qeth_l3_start_ipa_source_mac (struct qeth_card*) ;
 int qeth_l3_start_ipa_tso (struct qeth_card*) ;
 int qeth_l3_start_ipa_tx_checksum (struct qeth_card*) ;
 int qeth_l3_start_ipa_vlan (struct qeth_card*) ;
 scalar_t__ qeth_set_access_ctrl_online (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_l3_start_ipassists(struct qeth_card *card)
{
 QETH_DBF_TEXT(TRACE, 3, "strtipas");

 if (qeth_set_access_ctrl_online(card, 0))
  return -EIO;
 qeth_l3_start_ipa_arp_processing(card);
 qeth_l3_start_ipa_ip_fragmentation(card);
 qeth_l3_start_ipa_source_mac(card);
 qeth_l3_start_ipa_vlan(card);
 qeth_l3_start_ipa_multicast(card);
 qeth_l3_start_ipa_ipv6(card);
 qeth_l3_start_ipa_broadcast(card);
 qeth_l3_start_ipa_checksum(card);
 qeth_l3_start_ipa_tx_checksum(card);
 qeth_l3_start_ipa_tso(card);
 return 0;
}
