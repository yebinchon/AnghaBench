
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_routing_info {int type; } ;
struct TYPE_2__ {int broadcast_capable; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef int ssize_t ;





 int QETH_BROADCAST_WITHOUT_ECHO ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t qeth_l3_dev_route_show(struct qeth_card *card,
   struct qeth_routing_info *route, char *buf)
{
 switch (route->type) {
 case 130:
  return sprintf(buf, "%s\n", "primary router");
 case 128:
  return sprintf(buf, "%s\n", "secondary router");
 case 132:
  if (card->info.broadcast_capable == QETH_BROADCAST_WITHOUT_ECHO)
   return sprintf(buf, "%s\n", "multicast router+");
  else
   return sprintf(buf, "%s\n", "multicast router");
 case 131:
  if (card->info.broadcast_capable == QETH_BROADCAST_WITHOUT_ECHO)
   return sprintf(buf, "%s\n", "primary connector+");
  else
   return sprintf(buf, "%s\n", "primary connector");
 case 129:
  if (card->info.broadcast_capable == QETH_BROADCAST_WITHOUT_ECHO)
   return sprintf(buf, "%s\n", "secondary connector+");
  else
   return sprintf(buf, "%s\n", "secondary connector");
 default:
  return sprintf(buf, "%s\n", "no");
 }
}
