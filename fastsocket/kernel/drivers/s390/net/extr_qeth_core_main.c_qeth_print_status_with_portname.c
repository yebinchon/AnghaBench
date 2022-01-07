
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* portname; char* mcl_level; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* gdev; } ;
typedef size_t __u8 ;
struct TYPE_3__ {int dev; } ;


 scalar_t__* _ebcasc ;
 int dev_info (int *,char*,int ,char*,char*,char*,int ,char*) ;
 int qeth_get_cardname (struct qeth_card*) ;
 int qeth_get_cardname_short (struct qeth_card*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void qeth_print_status_with_portname(struct qeth_card *card)
{
 char dbf_text[15];
 int i;

 sprintf(dbf_text, "%s", card->info.portname + 1);
 for (i = 0; i < 8; i++)
  dbf_text[i] =
   (char) _ebcasc[(__u8) dbf_text[i]];
 dbf_text[8] = 0;
 dev_info(&card->gdev->dev, "Device is a%s card%s%s%s\n"
        "with link type %s (portname: %s)\n",
        qeth_get_cardname(card),
        (card->info.mcl_level[0]) ? " (level: " : "",
        (card->info.mcl_level[0]) ? card->info.mcl_level : "",
        (card->info.mcl_level[0]) ? ")" : "",
        qeth_get_cardname_short(card),
        dbf_text);

}
