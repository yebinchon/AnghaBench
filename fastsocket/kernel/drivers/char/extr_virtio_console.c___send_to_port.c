
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {size_t bytes_sent; } ;
struct port {int outvq_full; TYPE_1__ stats; int outvq_lock; struct virtqueue* out_vq; } ;
typedef scalar_t__ ssize_t ;


 int cpu_relax () ;
 int reclaim_consumed_buffers (struct port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ virtqueue_add_buf (struct virtqueue*,struct scatterlist*,int,int ,void*) ;
 int virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static ssize_t __send_to_port(struct port *port, struct scatterlist *sg,
         int nents, size_t in_count,
         void *data, bool nonblock)
{
 struct virtqueue *out_vq;
 ssize_t ret;
 unsigned long flags;
 unsigned int len;

 out_vq = port->out_vq;

 spin_lock_irqsave(&port->outvq_lock, flags);

 reclaim_consumed_buffers(port);

 ret = virtqueue_add_buf(out_vq, sg, nents, 0, data);


 virtqueue_kick(out_vq);

 if (ret < 0) {
  in_count = 0;
  goto done;
 }

 if (ret == 0)
  port->outvq_full = 1;

 if (nonblock)
  goto done;
 while (!virtqueue_get_buf(out_vq, &len))
  cpu_relax();
done:
 spin_unlock_irqrestore(&port->outvq_lock, flags);

 port->stats.bytes_sent += in_count;




 return in_count;
}
