
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* state; } ;
struct TYPE_3__ {void* state; } ;
struct lcs_card {TYPE_2__ read; TYPE_1__ write; int state; scalar_t__ dev; } ;


 int DEV_STATE_DOWN ;
 int DEV_STATE_UP ;
 void* LCS_CH_STATE_INIT ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_INITIATOR_TCPIP ;
 int lcs_send_startup (struct lcs_card*,int ) ;
 int lcs_start_channels (struct lcs_card*) ;
 int lcs_startlan (struct lcs_card*) ;
 int lcs_stop_channels (struct lcs_card*) ;
 int netif_stop_queue (scalar_t__) ;
 int setup ;

__attribute__((used)) static int
lcs_detect(struct lcs_card *card)
{
 int rc = 0;

 LCS_DBF_TEXT(2, setup, "lcsdetct");

 if (card->dev)
  netif_stop_queue(card->dev);
 rc = lcs_stop_channels(card);
 if (rc == 0) {
  rc = lcs_start_channels(card);
  if (rc == 0) {
   rc = lcs_send_startup(card, LCS_INITIATOR_TCPIP);
   if (rc == 0)
    rc = lcs_startlan(card);
  }
 }
 if (rc == 0) {
  card->state = DEV_STATE_UP;
 } else {
  card->state = DEV_STATE_DOWN;
  card->write.state = LCS_CH_STATE_INIT;
  card->read.state = LCS_CH_STATE_INIT;
 }
 return rc;
}
