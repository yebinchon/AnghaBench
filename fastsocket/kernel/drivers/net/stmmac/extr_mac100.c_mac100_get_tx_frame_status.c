
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stmmac_extra_stats {int tx_deferred; int tx_heartbeat; int tx_losscarrier; int tx_carrier; int tx_underflow; } ;
struct net_device_stats {int tx_heartbeat_errors; int collisions; int tx_carrier_errors; int tx_fifo_errors; } ;
struct TYPE_3__ {int error_summary; int underflow_error; int no_carrier; int loss_carrier; int heartbeat_fail; int deferred; scalar_t__ collision_count; scalar_t__ late_collision; scalar_t__ excessive_collisions; scalar_t__ excessive_deferral; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct dma_desc {TYPE_2__ des01; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mac100_get_tx_frame_status(void *data, struct stmmac_extra_stats *x,
          struct dma_desc *p, unsigned long ioaddr)
{
 int ret = 0;
 struct net_device_stats *stats = (struct net_device_stats *)data;

 if (unlikely(p->des01.tx.error_summary)) {
  if (unlikely(p->des01.tx.underflow_error)) {
   x->tx_underflow++;
   stats->tx_fifo_errors++;
  }
  if (unlikely(p->des01.tx.no_carrier)) {
   x->tx_carrier++;
   stats->tx_carrier_errors++;
  }
  if (unlikely(p->des01.tx.loss_carrier)) {
   x->tx_losscarrier++;
   stats->tx_carrier_errors++;
  }
  if (unlikely((p->des01.tx.excessive_deferral) ||
        (p->des01.tx.excessive_collisions) ||
        (p->des01.tx.late_collision)))
   stats->collisions += p->des01.tx.collision_count;
  ret = -1;
 }
 if (unlikely(p->des01.tx.heartbeat_fail)) {
  x->tx_heartbeat++;
  stats->tx_heartbeat_errors++;
  ret = -1;
 }
 if (unlikely(p->des01.tx.deferred))
  x->tx_deferred++;

 return ret;
}
