
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_ring {int nr_free; } ;
struct jme_adapter {scalar_t__ tx_wake_threshold; int dev; struct jme_ring* txring; } ;


 scalar_t__ atomic_read (int *) ;
 int msg_tx_done (struct jme_adapter*,char*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
jme_wake_queue_if_stopped(struct jme_adapter *jme)
{
 struct jme_ring *txring = &(jme->txring[0]);

 smp_wmb();
 if (unlikely(netif_queue_stopped(jme->dev) &&
 atomic_read(&txring->nr_free) >= (jme->tx_wake_threshold))) {
  msg_tx_done(jme, "TX Queue Waked.\n");
  netif_wake_queue(jme->dev);
 }

}
