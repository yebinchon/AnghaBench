
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {scalar_t__ tx_state; int txd; int tx_count; int bitrate; } ;
struct net_device {int dummy; } ;


 scalar_t__ TX_HEAD ;
 scalar_t__ TX_TAIL ;
 int ptt_on (struct net_device*) ;

__attribute__((used)) static void yam_start_tx(struct net_device *dev, struct yam_port *yp)
{
 if ((yp->tx_state == TX_TAIL) || (yp->txd == 0))
  yp->tx_count = 1;
 else
  yp->tx_count = (yp->bitrate * yp->txd) / 8000;
 yp->tx_state = TX_HEAD;
 ptt_on(dev);
}
