
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* flags; } ;
struct TYPE_12__ {TYPE_1__ flush; } ;
struct TYPE_13__ {TYPE_2__ args; void* request; } ;
typedef TYPE_3__ command ;
struct TYPE_14__ {scalar_t__ pending; scalar_t__ buffers_wanted; } ;
typedef TYPE_4__ amb_rxq ;
struct TYPE_15__ {int flags; TYPE_4__* rxq; } ;
typedef TYPE_5__ amb_dev ;


 int DBG_FLOW ;
 int DBG_POOL ;
 int PRINTD (int,char*,TYPE_5__*,unsigned char) ;
 unsigned char SRB_FLUSH_BUFFER_Q ;
 unsigned char SRB_POOL_SHIFT ;
 scalar_t__ command_do (TYPE_5__*,TYPE_3__*) ;
 void* cpu_to_be32 (unsigned char) ;
 int dead ;
 scalar_t__ rx_take (TYPE_5__*,unsigned char) ;
 int schedule () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void drain_rx_pool (amb_dev * dev, unsigned char pool) {
  amb_rxq * rxq = &dev->rxq[pool];

  PRINTD (DBG_FLOW|DBG_POOL, "drain_rx_pool %p %hu", dev, pool);

  if (test_bit (dead, &dev->flags))
    return;




  if (rxq->pending > rxq->buffers_wanted) {
    command cmd;
    cmd.request = cpu_to_be32 (SRB_FLUSH_BUFFER_Q);
    cmd.args.flush.flags = cpu_to_be32 (pool << SRB_POOL_SHIFT);
    while (command_do (dev, &cmd))
      schedule();

    while (rxq->pending > rxq->buffers_wanted)
      if (rx_take (dev, pool))
 schedule();
  }

  return;
}
