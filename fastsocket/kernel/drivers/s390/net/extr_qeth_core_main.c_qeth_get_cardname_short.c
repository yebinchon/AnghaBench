
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int link_type; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
const char *qeth_get_cardname_short(struct qeth_card *card)
{
 if (card->info.guestlan) {
  switch (card->info.type) {
  case 139:
   return "GuestLAN QDIO";
  case 140:
   return "GuestLAN Hiper";
  case 138:
   return "GuestLAN OSM";
  case 136:
   return "GuestLAN OSX";
  default:
   return "unknown";
  }
 } else {
  switch (card->info.type) {
  case 139:
   switch (card->info.link_type) {
   case 134:
    return "OSD_100";
   case 132:
    return "HSTR";
   case 133:
    return "OSD_1000";
   case 135:
    return "OSD_10GIG";
   case 130:
    return "OSD_FE_LANE";
   case 128:
    return "OSD_TR_LANE";
   case 129:
    return "OSD_GbE_LANE";
   case 131:
    return "OSD_ATM_LANE";
   default:
    return "OSD_Express";
   }
  case 140:
   return "HiperSockets";
  case 137:
   return "OSN";
  case 138:
   return "OSM_1000";
  case 136:
   return "OSX_10GIG";
  default:
   return "unknown";
  }
 }
 return "n/a";
}
