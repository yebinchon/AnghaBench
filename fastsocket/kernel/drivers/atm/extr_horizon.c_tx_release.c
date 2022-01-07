
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tx_queue; int flags; } ;
typedef TYPE_1__ hrz_dev ;


 int DBG_TX ;
 int PRINTD (int ,char*,TYPE_1__*) ;
 int clear_bit (int ,int *) ;
 int tx_busy ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void tx_release (hrz_dev * dev) {
  clear_bit (tx_busy, &dev->flags);
  PRINTD (DBG_TX, "cleared tx_busy for dev %p", dev);
  wake_up_interruptible (&dev->tx_queue);
}
