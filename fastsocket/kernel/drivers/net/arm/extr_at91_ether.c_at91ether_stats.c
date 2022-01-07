
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_packets; int rx_frame_errors; int rx_length_errors; int rx_crc_errors; int rx_fifo_errors; int rx_errors; int tx_packets; int tx_fifo_errors; int tx_carrier_errors; int tx_heartbeat_errors; int tx_window_errors; int tx_aborted_errors; int collisions; } ;
struct net_device {struct net_device_stats stats; } ;


 int AT91_EMAC_ALE ;
 int AT91_EMAC_CDE ;
 int AT91_EMAC_CSE ;
 int AT91_EMAC_DRFC ;
 int AT91_EMAC_ECOL ;
 int AT91_EMAC_ELR ;
 int AT91_EMAC_FRA ;
 int AT91_EMAC_LCOL ;
 int AT91_EMAC_MCOL ;
 int AT91_EMAC_OK ;
 int AT91_EMAC_RJB ;
 int AT91_EMAC_SCOL ;
 int AT91_EMAC_SEQE ;
 int AT91_EMAC_SQEE ;
 int AT91_EMAC_TUE ;
 int AT91_EMAC_USF ;
 int at91_emac_read (int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *at91ether_stats(struct net_device *dev)
{
 int ale, lenerr, seqe, lcol, ecol;

 if (netif_running(dev)) {
  dev->stats.rx_packets += at91_emac_read(AT91_EMAC_OK);
  ale = at91_emac_read(AT91_EMAC_ALE);
  dev->stats.rx_frame_errors += ale;
  lenerr = at91_emac_read(AT91_EMAC_ELR) + at91_emac_read(AT91_EMAC_USF);
  dev->stats.rx_length_errors += lenerr;
  seqe = at91_emac_read(AT91_EMAC_SEQE);
  dev->stats.rx_crc_errors += seqe;
  dev->stats.rx_fifo_errors += at91_emac_read(AT91_EMAC_DRFC);
  dev->stats.rx_errors += (ale + lenerr + seqe
   + at91_emac_read(AT91_EMAC_CDE) + at91_emac_read(AT91_EMAC_RJB));

  dev->stats.tx_packets += at91_emac_read(AT91_EMAC_FRA);
  dev->stats.tx_fifo_errors += at91_emac_read(AT91_EMAC_TUE);
  dev->stats.tx_carrier_errors += at91_emac_read(AT91_EMAC_CSE);
  dev->stats.tx_heartbeat_errors += at91_emac_read(AT91_EMAC_SQEE);

  lcol = at91_emac_read(AT91_EMAC_LCOL);
  ecol = at91_emac_read(AT91_EMAC_ECOL);
  dev->stats.tx_window_errors += lcol;
  dev->stats.tx_aborted_errors += ecol;

  dev->stats.collisions += (at91_emac_read(AT91_EMAC_SCOL) + at91_emac_read(AT91_EMAC_MCOL) + lcol + ecol);
 }
 return &dev->stats;
}
