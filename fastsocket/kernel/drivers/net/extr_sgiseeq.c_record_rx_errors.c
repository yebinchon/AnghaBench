
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 unsigned char SEEQ_RSTAT_CERROR ;
 unsigned char SEEQ_RSTAT_DERROR ;
 unsigned char SEEQ_RSTAT_OVERF ;
 unsigned char SEEQ_RSTAT_REOF ;
 unsigned char SEEQ_RSTAT_SFRAME ;

__attribute__((used)) static void record_rx_errors(struct net_device *dev, unsigned char status)
{
 if (status & SEEQ_RSTAT_OVERF ||
     status & SEEQ_RSTAT_SFRAME)
  dev->stats.rx_over_errors++;
 if (status & SEEQ_RSTAT_CERROR)
  dev->stats.rx_crc_errors++;
 if (status & SEEQ_RSTAT_DERROR)
  dev->stats.rx_frame_errors++;
 if (status & SEEQ_RSTAT_REOF)
  dev->stats.rx_errors++;
}
