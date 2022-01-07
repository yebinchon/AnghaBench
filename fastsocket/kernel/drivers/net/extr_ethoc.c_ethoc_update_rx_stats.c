
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev; } ;
struct ethoc_bd {int stat; } ;
struct TYPE_2__ {int collisions; int rx_missed_errors; int rx_over_errors; int rx_crc_errors; int rx_frame_errors; int rx_length_errors; } ;
struct ethoc {TYPE_1__ stats; struct net_device* netdev; } ;


 int RX_BD_CRC ;
 int RX_BD_DN ;
 int RX_BD_LC ;
 int RX_BD_MISS ;
 int RX_BD_OR ;
 int RX_BD_SF ;
 int RX_BD_TL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static unsigned int ethoc_update_rx_stats(struct ethoc *dev,
  struct ethoc_bd *bd)
{
 struct net_device *netdev = dev->netdev;
 unsigned int ret = 0;

 if (bd->stat & RX_BD_TL) {
  dev_err(&netdev->dev, "RX: frame too long\n");
  dev->stats.rx_length_errors++;
  ret++;
 }

 if (bd->stat & RX_BD_SF) {
  dev_err(&netdev->dev, "RX: frame too short\n");
  dev->stats.rx_length_errors++;
  ret++;
 }

 if (bd->stat & RX_BD_DN) {
  dev_err(&netdev->dev, "RX: dribble nibble\n");
  dev->stats.rx_frame_errors++;
 }

 if (bd->stat & RX_BD_CRC) {
  dev_err(&netdev->dev, "RX: wrong CRC\n");
  dev->stats.rx_crc_errors++;
  ret++;
 }

 if (bd->stat & RX_BD_OR) {
  dev_err(&netdev->dev, "RX: overrun\n");
  dev->stats.rx_over_errors++;
  ret++;
 }

 if (bd->stat & RX_BD_MISS)
  dev->stats.rx_missed_errors++;

 if (bd->stat & RX_BD_LC) {
  dev_err(&netdev->dev, "RX: late collision\n");
  dev->stats.collisions++;
  ret++;
 }

 return ret;
}
