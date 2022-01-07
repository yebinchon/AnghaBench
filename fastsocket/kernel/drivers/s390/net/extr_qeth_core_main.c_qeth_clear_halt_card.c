
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_clear_channels (struct qeth_card*) ;
 int qeth_halt_channels (struct qeth_card*) ;

__attribute__((used)) static int qeth_clear_halt_card(struct qeth_card *card, int halt)
{
 int rc = 0;

 QETH_DBF_TEXT(TRACE, 3, "clhacrd");
 QETH_DBF_HEX(TRACE, 3, &card, sizeof(void *));

 if (halt)
  rc = qeth_halt_channels(card);
 if (rc)
  return rc;
 return qeth_clear_channels(card);
}
