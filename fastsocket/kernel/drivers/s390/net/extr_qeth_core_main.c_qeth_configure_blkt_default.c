
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_total; int inter_packet; int inter_packet_jumbo; } ;
struct TYPE_4__ {TYPE_1__ blkt; } ;
struct qeth_card {TYPE_2__ info; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;

__attribute__((used)) static void qeth_configure_blkt_default(struct qeth_card *card, char *prcd) {
 QETH_DBF_TEXT(SETUP, 2, "cfgblkt");

 if (prcd[74] == 0xF0 && prcd[75] == 0xF0 &&
     prcd[76] >= 0xF1 && prcd[76] <= 0xF4) {
  card->info.blkt.time_total = 0;
  card->info.blkt.inter_packet = 0;
  card->info.blkt.inter_packet_jumbo = 0;
 } else {
  card->info.blkt.time_total = 250;
  card->info.blkt.inter_packet = 5;
  card->info.blkt.inter_packet_jumbo = 15;
 }
}
