
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_stats {int rx_bytes; int collisions; int rx_crc_errors; int rx_length_errors; int rx_missed_errors; int rx_errors; int multicast; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct au1000_private {int dummy; } ;


 int RX_COLL ;
 int RX_CRC_ERROR ;
 int RX_ERROR ;
 int RX_FRAME_LEN_MASK ;
 int RX_LEN_ERROR ;
 int RX_MCAST_FRAME ;
 int RX_MISSED_FRAME ;
 int RX_OVERLEN ;
 int RX_RUNT ;
 struct au1000_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void update_rx_stats(struct net_device *dev, u32 status)
{
 struct au1000_private *aup = netdev_priv(dev);
 struct net_device_stats *ps = &dev->stats;

 ps->rx_packets++;
 if (status & RX_MCAST_FRAME)
  ps->multicast++;

 if (status & RX_ERROR) {
  ps->rx_errors++;
  if (status & RX_MISSED_FRAME)
   ps->rx_missed_errors++;
  if (status & (RX_OVERLEN | RX_RUNT | RX_LEN_ERROR))
   ps->rx_length_errors++;
  if (status & RX_CRC_ERROR)
   ps->rx_crc_errors++;
  if (status & RX_COLL)
   ps->collisions++;
 }
 else
  ps->rx_bytes += status & RX_FRAME_LEN_MASK;

}
