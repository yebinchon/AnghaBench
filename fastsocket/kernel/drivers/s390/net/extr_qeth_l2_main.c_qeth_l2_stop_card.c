
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ type; int mac_bits; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ write; TYPE_2__ read; TYPE_1__ info; int dev; } ;


 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_HARDSETUP ;
 scalar_t__ CARD_STATE_SOFTSETUP ;
 scalar_t__ CARD_STATE_UP ;
 scalar_t__ CH_STATE_UP ;
 scalar_t__ QETH_CARD_TYPE_OSN ;
 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_LAYER2_MAC_REGISTERED ;
 int SETUP ;
 int dev_close (int ) ;
 int qeth_clear_cmd_buffers (TYPE_2__*) ;
 int qeth_clear_ipacmd_list (struct qeth_card*) ;
 int qeth_clear_qdio_buffers (struct qeth_card*) ;
 int qeth_clear_working_pool_list (struct qeth_card*) ;
 int qeth_l2_del_all_mc (struct qeth_card*,int ) ;
 int qeth_l2_stop (int ) ;
 int qeth_qdio_clear_card (struct qeth_card*,int ) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qeth_l2_stop_card(struct qeth_card *card, int recovery_mode)
{
 int rc = 0;

 QETH_DBF_TEXT(SETUP , 2, "stopcard");
 QETH_DBF_HEX(SETUP, 2, &card, sizeof(void *));

 qeth_set_allowed_threads(card, 0, 1);
 if (card->read.state == CH_STATE_UP &&
     card->write.state == CH_STATE_UP &&
     (card->state == CARD_STATE_UP)) {
  if (recovery_mode &&
      card->info.type != QETH_CARD_TYPE_OSN) {
   qeth_l2_stop(card->dev);
  } else {
   rtnl_lock();
   dev_close(card->dev);
   rtnl_unlock();
  }
  card->info.mac_bits &= ~QETH_LAYER2_MAC_REGISTERED;
  card->state = CARD_STATE_SOFTSETUP;
 }
 if (card->state == CARD_STATE_SOFTSETUP) {
  qeth_l2_del_all_mc(card, 0);
  qeth_clear_ipacmd_list(card);
  card->state = CARD_STATE_HARDSETUP;
 }
 if (card->state == CARD_STATE_HARDSETUP) {
  qeth_qdio_clear_card(card, 0);
  qeth_clear_qdio_buffers(card);
  qeth_clear_working_pool_list(card);
  card->state = CARD_STATE_DOWN;
 }
 if (card->state == CARD_STATE_DOWN) {
  qeth_clear_cmd_buffers(&card->read);
  qeth_clear_cmd_buffers(&card->write);
 }
 return rc;
}
