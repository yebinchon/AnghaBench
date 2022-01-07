
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tx_errors; scalar_t__ collisions; scalar_t__ tx_dropped; int tx_aborted_errors; int tx_packets; scalar_t__ rx_errors; scalar_t__ rx_dropped; int rx_missed_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_length_errors; int rx_crc_errors; int rx_over_errors; int rx_packets; } ;
struct TYPE_10__ {TYPE_4__ stats; } ;
struct TYPE_6__ {int tx_aborts; int n2_tx_frames; int rx_aborts; int rx_crc_errors; int rx_over_errors; int n2_rx_frames; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_8__ {TYPE_2__ x; } ;
struct cycx_device {TYPE_5__ wandev; TYPE_3__ u; int wait_stats; } ;


 int EINTR ;
 int X25_STATISTIC ;
 int current ;
 int cycx_x25_dump_devs (TYPE_5__*) ;
 int interruptible_sleep_on (int *) ;
 scalar_t__ signal_pending (int ) ;
 int x25_exec (struct cycx_device*,int ,int ,int *,int,int *,int ) ;

__attribute__((used)) static int cycx_x25_get_stats(struct cycx_device *card)
{


 int err = x25_exec(card, X25_STATISTIC, 0, ((void*)0), 20, ((void*)0), 0);

 if (err)
  return err;

 interruptible_sleep_on(&card->wait_stats);

 if (signal_pending(current))
  return -EINTR;

 card->wandev.stats.rx_packets = card->u.x.stats.n2_rx_frames;
 card->wandev.stats.rx_over_errors = card->u.x.stats.rx_over_errors;
 card->wandev.stats.rx_crc_errors = card->u.x.stats.rx_crc_errors;
 card->wandev.stats.rx_length_errors = 0;
 card->wandev.stats.rx_frame_errors = 0;
 card->wandev.stats.rx_missed_errors = card->u.x.stats.rx_aborts;
 card->wandev.stats.rx_dropped = 0;
 card->wandev.stats.rx_errors = 0;
 card->wandev.stats.tx_packets = card->u.x.stats.n2_tx_frames;
 card->wandev.stats.tx_aborted_errors = card->u.x.stats.tx_aborts;
 card->wandev.stats.tx_dropped = 0;
 card->wandev.stats.collisions = 0;
 card->wandev.stats.tx_errors = 0;

 cycx_x25_dump_devs(&card->wandev);

 return 0;
}
