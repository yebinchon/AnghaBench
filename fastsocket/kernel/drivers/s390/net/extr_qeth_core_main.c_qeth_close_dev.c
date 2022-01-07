
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int close_dev_work; } ;


 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int qeth_wq ;
 int queue_work (int ,int *) ;

void qeth_close_dev(struct qeth_card *card)
{
 QETH_DBF_TEXT(TRACE, 2, "cldevsubm");
 queue_work(qeth_wq, &card->close_dev_work);
}
