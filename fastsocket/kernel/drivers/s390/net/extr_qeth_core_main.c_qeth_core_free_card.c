
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int qeth_service_level; struct qeth_card* ip_tbd_list; scalar_t__ dev; int write; int read; } ;


 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int free_netdev (scalar_t__) ;
 int kfree (struct qeth_card*) ;
 int qeth_clean_channel (int *) ;
 int qeth_free_qdio_buffers (struct qeth_card*) ;
 int unregister_service_level (int *) ;

__attribute__((used)) static void qeth_core_free_card(struct qeth_card *card)
{

 QETH_DBF_TEXT(SETUP, 2, "freecrd");
 QETH_DBF_HEX(SETUP, 2, &card, sizeof(void *));
 qeth_clean_channel(&card->read);
 qeth_clean_channel(&card->write);
 if (card->dev)
  free_netdev(card->dev);
 kfree(card->ip_tbd_list);
 qeth_free_qdio_buffers(card);
 unregister_service_level(&card->qeth_service_level);
 kfree(card);
}
