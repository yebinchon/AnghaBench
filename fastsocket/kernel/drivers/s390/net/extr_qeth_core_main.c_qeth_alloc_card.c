
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int seq_print; } ;
struct TYPE_3__ {int layer2; } ;
struct qeth_card {struct qeth_card* ip_tbd_list; int read; TYPE_2__ qeth_service_level; TYPE_1__ options; int write; } ;
struct list_head {int dummy; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 int kfree (struct qeth_card*) ;
 void* kzalloc (int,int) ;
 int qeth_clean_channel (int *) ;
 int qeth_core_sl_print ;
 scalar_t__ qeth_setup_channel (int *) ;
 int register_service_level (TYPE_2__*) ;

__attribute__((used)) static struct qeth_card *qeth_alloc_card(void)
{
 struct qeth_card *card;

 QETH_DBF_TEXT(SETUP, 2, "alloccrd");
 card = kzalloc(sizeof(struct qeth_card), GFP_DMA|GFP_KERNEL);
 if (!card)
  goto out;
 QETH_DBF_HEX(SETUP, 2, &card, sizeof(void *));
 card->ip_tbd_list = kzalloc(sizeof(struct list_head), GFP_KERNEL);
 if (!card->ip_tbd_list) {
  QETH_DBF_TEXT(SETUP, 0, "iptbdnom");
  goto out_card;
 }
 if (qeth_setup_channel(&card->read))
  goto out_ip;
 if (qeth_setup_channel(&card->write))
  goto out_channel;
 card->options.layer2 = -1;
 card->qeth_service_level.seq_print = qeth_core_sl_print;
 register_service_level(&card->qeth_service_level);
 return card;

out_channel:
 qeth_clean_channel(&card->read);
out_ip:
 kfree(card->ip_tbd_list);
out_card:
 kfree(card);
out:
 return ((void*)0);
}
