
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int data; int write; int read; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_halt_channel (int *) ;

__attribute__((used)) static int qeth_halt_channels(struct qeth_card *card)
{
 int rc1 = 0, rc2 = 0, rc3 = 0;

 QETH_DBF_TEXT(TRACE, 3, "haltchs");
 rc1 = qeth_halt_channel(&card->read);
 rc2 = qeth_halt_channel(&card->write);
 rc3 = qeth_halt_channel(&card->data);
 if (rc1)
  return rc1;
 if (rc2)
  return rc2;
 return rc3;
}
