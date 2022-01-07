
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* mcl_level; scalar_t__* portname; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* gdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int *,char*,int ,char*,char*,char*,int ) ;
 int qeth_get_cardname (struct qeth_card*) ;
 int qeth_get_cardname_short (struct qeth_card*) ;

__attribute__((used)) static void qeth_print_status_no_portname(struct qeth_card *card)
{
 if (card->info.portname[0])
  dev_info(&card->gdev->dev, "Device is a%s "
         "card%s%s%s\nwith link type %s "
         "(no portname needed by interface).\n",
         qeth_get_cardname(card),
         (card->info.mcl_level[0]) ? " (level: " : "",
         (card->info.mcl_level[0]) ? card->info.mcl_level : "",
         (card->info.mcl_level[0]) ? ")" : "",
         qeth_get_cardname_short(card));
 else
  dev_info(&card->gdev->dev, "Device is a%s "
         "card%s%s%s\nwith link type %s.\n",
         qeth_get_cardname(card),
         (card->info.mcl_level[0]) ? " (level: " : "",
         (card->info.mcl_level[0]) ? card->info.mcl_level : "",
         (card->info.mcl_level[0]) ? ")" : "",
         qeth_get_cardname_short(card));
}
