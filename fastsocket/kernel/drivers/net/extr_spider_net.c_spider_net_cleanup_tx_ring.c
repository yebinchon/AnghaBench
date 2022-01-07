
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_card {TYPE_1__* netdev; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_UP ;
 int netif_wake_queue (TYPE_1__*) ;
 int spider_net_kick_tx_dma (struct spider_net_card*) ;
 scalar_t__ spider_net_release_tx_chain (struct spider_net_card*,int ) ;

__attribute__((used)) static void
spider_net_cleanup_tx_ring(struct spider_net_card *card)
{
 if ((spider_net_release_tx_chain(card, 0) != 0) &&
     (card->netdev->flags & IFF_UP)) {
  spider_net_kick_tx_dma(card);
  netif_wake_queue(card->netdev);
 }
}
