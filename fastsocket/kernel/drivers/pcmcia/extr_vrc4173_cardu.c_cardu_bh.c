
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info; int (* handler ) (int ,scalar_t__) ;int event_lock; scalar_t__ events; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef scalar_t__ uint16_t ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void cardu_bh(void *data)
{
 vrc4173_socket_t *socket = (vrc4173_socket_t *)data;
 uint16_t events;

 spin_lock_irq(&socket->event_lock);
 events = socket->events;
 socket->events = 0;
 spin_unlock_irq(&socket->event_lock);

 if (socket->handler)
  socket->handler(socket->info, events);
}
