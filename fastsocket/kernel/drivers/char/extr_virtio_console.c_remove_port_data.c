
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_buffer {int dummy; } ;
struct port {int outvq_lock; int out_vq; int inbuf_lock; int in_vq; } ;


 int discard_port_data (struct port*) ;
 int free_buf (struct port_buffer*) ;
 int reclaim_consumed_buffers (struct port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct port_buffer* virtqueue_detach_unused_buf (int ) ;

__attribute__((used)) static void remove_port_data(struct port *port)
{
 struct port_buffer *buf;

 spin_lock_irq(&port->inbuf_lock);

 discard_port_data(port);


 while ((buf = virtqueue_detach_unused_buf(port->in_vq)))
  free_buf(buf);
 spin_unlock_irq(&port->inbuf_lock);

 spin_lock_irq(&port->outvq_lock);
 reclaim_consumed_buffers(port);


 while ((buf = virtqueue_detach_unused_buf(port->out_vq)))
  free_buf(buf);
 spin_unlock_irq(&port->outvq_lock);
}
