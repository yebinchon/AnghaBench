
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_buffer {scalar_t__ len; scalar_t__ offset; scalar_t__ buf; } ;
struct port {int inbuf_lock; int dev; int in_vq; struct port_buffer* inbuf; } ;
typedef size_t ssize_t ;


 size_t EFAULT ;
 scalar_t__ add_inbuf (int ,struct port_buffer*) ;
 size_t copy_to_user (char*,scalar_t__,size_t) ;
 int dev_warn (int ,char*) ;
 int memcpy (char*,scalar_t__,size_t) ;
 size_t min (size_t,scalar_t__) ;
 int port_has_data (struct port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t fill_readbuf(struct port *port, char *out_buf, size_t out_count,
       bool to_user)
{
 struct port_buffer *buf;
 unsigned long flags;

 if (!out_count || !port_has_data(port))
  return 0;

 buf = port->inbuf;
 out_count = min(out_count, buf->len - buf->offset);

 if (to_user) {
  ssize_t ret;

  ret = copy_to_user(out_buf, buf->buf + buf->offset, out_count);
  if (ret)
   return -EFAULT;
 } else {
  memcpy(out_buf, buf->buf + buf->offset, out_count);
 }

 buf->offset += out_count;

 if (buf->offset == buf->len) {




  spin_lock_irqsave(&port->inbuf_lock, flags);
  port->inbuf = ((void*)0);

  if (add_inbuf(port->in_vq, buf) < 0)
   dev_warn(port->dev, "failed add_buf\n");

  spin_unlock_irqrestore(&port->inbuf_lock, flags);
 }

 return out_count;
}
