
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int outvq_full; int outvq_lock; int host_connected; int guest_connected; } ;


 int reclaim_consumed_buffers (struct port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool will_write_block(struct port *port)
{
 bool ret;

 if (!port->guest_connected) {

  return 0;
 }
 if (!port->host_connected)
  return 1;

 spin_lock_irq(&port->outvq_lock);




 reclaim_consumed_buffers(port);
 ret = port->outvq_full;
 spin_unlock_irq(&port->outvq_lock);

 return ret;
}
