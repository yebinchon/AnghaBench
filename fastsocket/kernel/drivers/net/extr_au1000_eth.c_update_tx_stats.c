
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device_stats {int tx_carrier_errors; int tx_aborted_errors; int tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct au1000_private {TYPE_1__* phy_dev; } ;
struct TYPE_2__ {scalar_t__ duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int TX_FRAME_ABORTED ;
 int TX_JAB_TIMEOUT ;
 int TX_LOSS_CARRIER ;
 int TX_NO_CARRIER ;
 int TX_UNDERRUN ;
 struct au1000_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void update_tx_stats(struct net_device *dev, u32 status)
{
 struct au1000_private *aup = netdev_priv(dev);
 struct net_device_stats *ps = &dev->stats;

 if (status & TX_FRAME_ABORTED) {
  if (!aup->phy_dev || (DUPLEX_FULL == aup->phy_dev->duplex)) {
   if (status & (TX_JAB_TIMEOUT | TX_UNDERRUN)) {


    ps->tx_errors++;
    ps->tx_aborted_errors++;
   }
  }
  else {
   ps->tx_errors++;
   ps->tx_aborted_errors++;
   if (status & (TX_NO_CARRIER | TX_LOSS_CARRIER))
    ps->tx_carrier_errors++;
  }
 }
}
