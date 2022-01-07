
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ctrl_queue {int index; scalar_t__ buf; } ;
struct catc {char* stats_buf; int* stats_vals; TYPE_2__* netdev; } ;
struct TYPE_3__ {int rx_errors; int rx_frame_errors; int tx_errors; int tx_aborted_errors; int collisions; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int EthStats ;





__attribute__((used)) static void catc_stats_done(struct catc *catc, struct ctrl_queue *q)
{
 int index = q->index - EthStats;
 u16 data, last;

 catc->stats_buf[index] = *((char *)q->buf);

 if (index & 1)
  return;

 data = ((u16)catc->stats_buf[index] << 8) | catc->stats_buf[index + 1];
 last = catc->stats_vals[index >> 1];

 switch (index) {
  case 128:
  case 129:
   catc->netdev->stats.collisions += data - last;
   break;
  case 130:
   catc->netdev->stats.tx_aborted_errors += data - last;
   catc->netdev->stats.tx_errors += data - last;
   break;
  case 131:
   catc->netdev->stats.rx_frame_errors += data - last;
   catc->netdev->stats.rx_errors += data - last;
   break;
 }

 catc->stats_vals[index >> 1] = data;
}
