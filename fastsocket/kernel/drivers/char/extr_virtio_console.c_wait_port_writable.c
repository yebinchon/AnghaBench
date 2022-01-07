
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int guest_connected; int waitqueue; } ;


 int EAGAIN ;
 int ENODEV ;
 int wait_event_freezable (int ,int) ;
 scalar_t__ will_write_block (struct port*) ;

__attribute__((used)) static int wait_port_writable(struct port *port, bool nonblock)
{
 int ret;

 if (will_write_block(port)) {
  if (nonblock)
   return -EAGAIN;

  ret = wait_event_freezable(port->waitqueue,
        !will_write_block(port));
  if (ret < 0)
   return ret;
 }

 if (!port->guest_connected)
  return -ENODEV;

 return 0;
}
