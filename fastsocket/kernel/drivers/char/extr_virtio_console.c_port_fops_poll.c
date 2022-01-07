
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int host_connected; int guest_connected; int waitqueue; } ;
struct file {struct port* private_data; } ;
typedef int poll_table ;


 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int will_read_block (struct port*) ;
 int will_write_block (struct port*) ;

__attribute__((used)) static unsigned int port_fops_poll(struct file *filp, poll_table *wait)
{
 struct port *port;
 unsigned int ret;

 port = filp->private_data;
 poll_wait(filp, &port->waitqueue, wait);

 if (!port->guest_connected) {

  return POLLHUP;
 }
 ret = 0;
 if (!will_read_block(port))
  ret |= POLLIN | POLLRDNORM;
 if (!will_write_block(port))
  ret |= POLLOUT;
 if (!port->host_connected)
  ret |= POLLHUP;

 return ret;
}
