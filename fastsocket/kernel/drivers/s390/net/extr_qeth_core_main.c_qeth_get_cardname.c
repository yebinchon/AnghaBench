
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
__attribute__((used)) static inline const char *qeth_get_cardname(struct qeth_card *card)
{
 if (card->info.guestlan) {
  switch (card->info.type) {
  case 131:
   return " Guest LAN QDIO";
  case 132:
   return " Guest LAN Hiper";
  case 130:
   return " Guest LAN QDIO - OSM";
  case 128:
   return " Guest LAN QDIO - OSX";
  default:
   return " unknown";
  }
 } else {
  switch (card->info.type) {
  case 131:
   return " OSD Express";
  case 132:
   return " HiperSockets";
  case 129:
   return " OSN QDIO";
  case 130:
   return " OSM QDIO";
  case 128:
   return " OSX QDIO";
  default:
   return " unknown";
  }
 }
 return " n/a";
}
