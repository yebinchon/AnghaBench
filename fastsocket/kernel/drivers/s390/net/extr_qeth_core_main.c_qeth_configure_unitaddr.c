
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char chpid; char unit_addr2; char cula; int guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 char* _ascebc ;

__attribute__((used)) static void qeth_configure_unitaddr(struct qeth_card *card, char *prcd)
{
 QETH_DBF_TEXT(SETUP, 2, "cfgunit");
 card->info.chpid = prcd[30];
 card->info.unit_addr2 = prcd[31];
 card->info.cula = prcd[63];
 card->info.guestlan = ((prcd[0x10] == _ascebc['V']) &&
          (prcd[0x11] == _ascebc['M']));
}
