
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int multicast; int rx_length_errors; int rx_crc_errors; int rx_frame_errors; int rx_over_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int RDES0_COLLISION_SEEN_ ;
 int RDES0_CRC_ERROR_ ;
 int RDES0_DESCRIPTOR_ERROR_ ;
 int RDES0_ERROR_SUMMARY_ ;
 int RDES0_FIRST_DESCRIPTOR_ ;
 int RDES0_FRAME_TOO_LONG_ ;
 int RDES0_LAST_DESCRIPTOR_ ;
 int RDES0_LENGTH_ERROR_ ;
 int RDES0_MULTICAST_FRAME_ ;
 int RDES0_RUNT_FRAME_ ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void smsc9420_rx_count_stats(struct net_device *dev, u32 desc_status)
{
 if (unlikely(desc_status & RDES0_ERROR_SUMMARY_)) {
  dev->stats.rx_errors++;
  if (desc_status & RDES0_DESCRIPTOR_ERROR_)
   dev->stats.rx_over_errors++;
  else if (desc_status & (RDES0_FRAME_TOO_LONG_ |
   RDES0_RUNT_FRAME_ | RDES0_COLLISION_SEEN_))
   dev->stats.rx_frame_errors++;
  else if (desc_status & RDES0_CRC_ERROR_)
   dev->stats.rx_crc_errors++;
 }

 if (unlikely(desc_status & RDES0_LENGTH_ERROR_))
  dev->stats.rx_length_errors++;

 if (unlikely(!((desc_status & RDES0_LAST_DESCRIPTOR_) &&
  (desc_status & RDES0_FIRST_DESCRIPTOR_))))
  dev->stats.rx_length_errors++;

 if (desc_status & RDES0_MULTICAST_FRAME_)
  dev->stats.multicast++;
}
