
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int* mcl_level; scalar_t__ portname_required; int guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef size_t __u8 ;






 size_t QETH_MCL_LENGTH ;
 scalar_t__* _ebcasc ;
 int memset (char*,int ,int ) ;
 int qeth_print_status_no_portname (struct qeth_card*) ;
 int qeth_print_status_with_portname (struct qeth_card*) ;
 int sprintf (int*,char*,int,int) ;

void qeth_print_status_message(struct qeth_card *card)
{
 switch (card->info.type) {
 case 130:
 case 129:
 case 128:




  if (!card->info.mcl_level[0]) {
   sprintf(card->info.mcl_level, "%02x%02x",
    card->info.mcl_level[2],
    card->info.mcl_level[3]);

   card->info.mcl_level[QETH_MCL_LENGTH] = 0;
   break;
  }

 case 131:
  if ((card->info.guestlan) ||
      (card->info.mcl_level[0] & 0x80)) {
   card->info.mcl_level[0] = (char) _ebcasc[(__u8)
    card->info.mcl_level[0]];
   card->info.mcl_level[1] = (char) _ebcasc[(__u8)
    card->info.mcl_level[1]];
   card->info.mcl_level[2] = (char) _ebcasc[(__u8)
    card->info.mcl_level[2]];
   card->info.mcl_level[3] = (char) _ebcasc[(__u8)
    card->info.mcl_level[3]];
   card->info.mcl_level[QETH_MCL_LENGTH] = 0;
  }
  break;
 default:
  memset(&card->info.mcl_level[0], 0, QETH_MCL_LENGTH + 1);
 }
 if (card->info.portname_required)
  qeth_print_status_with_portname(card);
 else
  qeth_print_status_no_portname(card);
}
