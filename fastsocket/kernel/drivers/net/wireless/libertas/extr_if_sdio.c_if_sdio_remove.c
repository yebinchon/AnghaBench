
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct if_sdio_packet {scalar_t__ model; struct if_sdio_packet* next; struct if_sdio_packet* packets; int workqueue; TYPE_1__* priv; } ;
struct if_sdio_card {scalar_t__ model; struct if_sdio_card* next; struct if_sdio_card* packets; int workqueue; TYPE_1__* priv; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;
struct TYPE_4__ {int surpriseremoved; } ;


 int CMD_FUNC_SHUTDOWN ;
 scalar_t__ IF_SDIO_MODEL_8688 ;
 int LBS_DEB_SDIO ;
 scalar_t__ __lbs_cmd (TYPE_1__*,int ,struct cmd_header*,int,int ,unsigned long) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct if_sdio_packet*) ;
 int lbs_cmd_copyback ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_sdio (char*) ;
 int lbs_pr_alert (char*) ;
 int lbs_remove_card (TYPE_1__*) ;
 int lbs_stop_card (TYPE_1__*) ;
 int memset (struct cmd_header*,int ,int) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct if_sdio_packet* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 scalar_t__ user_rmmod ;

__attribute__((used)) static void if_sdio_remove(struct sdio_func *func)
{
 struct if_sdio_card *card;
 struct if_sdio_packet *packet;

 lbs_deb_enter(LBS_DEB_SDIO);

 card = sdio_get_drvdata(func);

 if (user_rmmod && (card->model == IF_SDIO_MODEL_8688)) {




  struct cmd_header cmd;

  memset(&cmd, 0, sizeof(cmd));

  lbs_deb_sdio("send function SHUTDOWN command\n");
  if (__lbs_cmd(card->priv, CMD_FUNC_SHUTDOWN,
    &cmd, sizeof(cmd), lbs_cmd_copyback,
    (unsigned long) &cmd))
   lbs_pr_alert("CMD_FUNC_SHUTDOWN cmd failed\n");
 }


 lbs_deb_sdio("call remove card\n");
 lbs_stop_card(card->priv);
 lbs_remove_card(card->priv);
 card->priv->surpriseremoved = 1;

 flush_workqueue(card->workqueue);
 destroy_workqueue(card->workqueue);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);

 while (card->packets) {
  packet = card->packets;
  card->packets = card->packets->next;
  kfree(packet);
 }

 kfree(card);

 lbs_deb_leave(LBS_DEB_SDIO);
}
