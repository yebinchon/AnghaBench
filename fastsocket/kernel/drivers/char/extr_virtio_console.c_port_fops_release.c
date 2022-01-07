
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int guest_connected; int kref; int outvq_lock; int inbuf_lock; } ;
struct inode {int dummy; } ;
struct file {struct port* private_data; } ;


 int VIRTIO_CONSOLE_PORT_OPEN ;
 int discard_port_data (struct port*) ;
 int kref_put (int *,int ) ;
 int reclaim_consumed_buffers (struct port*) ;
 int remove_port ;
 int send_control_msg (struct port*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int port_fops_release(struct inode *inode, struct file *filp)
{
 struct port *port;

 port = filp->private_data;


 send_control_msg(port, VIRTIO_CONSOLE_PORT_OPEN, 0);

 spin_lock_irq(&port->inbuf_lock);
 port->guest_connected = 0;

 discard_port_data(port);

 spin_unlock_irq(&port->inbuf_lock);

 spin_lock_irq(&port->outvq_lock);
 reclaim_consumed_buffers(port);
 spin_unlock_irq(&port->outvq_lock);
 kref_put(&port->kref, remove_port);

 return 0;
}
