
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {scalar_t__ state; int gdev; scalar_t__ dev; } ;


 scalar_t__ DEV_STATE_DOWN ;
 int __lcs_shutdown_device (int ,int) ;
 int lcs_set_allowed_threads (struct lcs_card*,int ) ;
 int lcs_wait_for_threads (struct lcs_card*,int) ;
 int netif_device_detach (scalar_t__) ;

__attribute__((used)) static int lcs_pm_suspend(struct lcs_card *card)
{
 if (card->dev)
  netif_device_detach(card->dev);
 lcs_set_allowed_threads(card, 0);
 lcs_wait_for_threads(card, 0xffffffff);
 if (card->state != DEV_STATE_DOWN)
  __lcs_shutdown_device(card->gdev, 1);
 return 0;
}
