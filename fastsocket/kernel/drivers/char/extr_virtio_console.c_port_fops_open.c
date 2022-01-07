
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int guest_connected; int kref; int outvq_lock; int inbuf_lock; } ;
struct inode {struct cdev* i_cdev; } ;
struct file {struct port* private_data; } ;
struct cdev {int dev; } ;


 int EBUSY ;
 int ENXIO ;
 int VIRTIO_CONSOLE_PORT_OPEN ;
 struct port* find_port_by_devt (int ) ;
 scalar_t__ is_console_port (struct port*) ;
 int kref_put (int *,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int reclaim_consumed_buffers (struct port*) ;
 int remove_port ;
 int send_control_msg (struct port*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int port_fops_open(struct inode *inode, struct file *filp)
{
 struct cdev *cdev = inode->i_cdev;
 struct port *port;
 int ret;


 port = find_port_by_devt(cdev->dev);
 if (!port) {

  return -ENXIO;
 }
 filp->private_data = port;





 if (is_console_port(port)) {
  ret = -ENXIO;
  goto out;
 }


 spin_lock_irq(&port->inbuf_lock);
 if (port->guest_connected) {
  spin_unlock_irq(&port->inbuf_lock);
  ret = -EBUSY;
  goto out;
 }

 port->guest_connected = 1;
 spin_unlock_irq(&port->inbuf_lock);

 spin_lock_irq(&port->outvq_lock);





 reclaim_consumed_buffers(port);
 spin_unlock_irq(&port->outvq_lock);

 nonseekable_open(inode, filp);


 send_control_msg(filp->private_data, VIRTIO_CONSOLE_PORT_OPEN, 1);

 return 0;
out:
 kref_put(&port->kref, remove_port);
 return ret;
}
