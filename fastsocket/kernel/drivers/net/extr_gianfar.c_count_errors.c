
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_crc_errors; int rx_frame_errors; int rx_length_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct gfar_extra_stats {int rx_overrun; int rx_crcerr; int rx_nonoctet; int rx_short; int rx_large; int rx_trunc; } ;
struct gfar_private {struct gfar_extra_stats extra_stats; } ;


 unsigned short RXBD_CRCERR ;
 unsigned short RXBD_LARGE ;
 unsigned short RXBD_NONOCTET ;
 unsigned short RXBD_OVERRUN ;
 unsigned short RXBD_SHORT ;
 unsigned short RXBD_TRUNCATED ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void count_errors(unsigned short status, struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct gfar_extra_stats *estats = &priv->extra_stats;



 if (status & RXBD_TRUNCATED) {
  stats->rx_length_errors++;

  estats->rx_trunc++;

  return;
 }

 if (status & (RXBD_LARGE | RXBD_SHORT)) {
  stats->rx_length_errors++;

  if (status & RXBD_LARGE)
   estats->rx_large++;
  else
   estats->rx_short++;
 }
 if (status & RXBD_NONOCTET) {
  stats->rx_frame_errors++;
  estats->rx_nonoctet++;
 }
 if (status & RXBD_CRCERR) {
  estats->rx_crcerr++;
  stats->rx_crc_errors++;
 }
 if (status & RXBD_OVERRUN) {
  estats->rx_overrun++;
  stats->rx_crc_errors++;
 }
}
