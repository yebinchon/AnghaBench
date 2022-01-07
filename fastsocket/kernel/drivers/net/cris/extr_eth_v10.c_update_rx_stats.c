
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_length_errors; int rx_frame_errors; int rx_crc_errors; int rx_fifo_errors; } ;


 scalar_t__ IO_EXTRACT (unsigned long*,int ,unsigned long) ;
 unsigned long* R_REC_COUNTERS ;
 int alignment_error ;
 int congestion ;
 int crc_error ;
 int oversize ;

__attribute__((used)) static void
update_rx_stats(struct net_device_stats *es)
{
 unsigned long r = *R_REC_COUNTERS;

 es->rx_fifo_errors += IO_EXTRACT(R_REC_COUNTERS, congestion, r);
 es->rx_crc_errors += IO_EXTRACT(R_REC_COUNTERS, crc_error, r);
 es->rx_frame_errors += IO_EXTRACT(R_REC_COUNTERS, alignment_error, r);
 es->rx_length_errors += IO_EXTRACT(R_REC_COUNTERS, oversize, r);
}
