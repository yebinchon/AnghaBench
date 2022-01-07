
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {unsigned int event; unsigned int value; int id; } ;
struct scatterlist {int dummy; } ;
struct ports_device {int c_ovq_lock; struct virtqueue* c_ovq; } ;
typedef int ssize_t ;
typedef int cpkt ;


 int cpu_relax () ;
 int sg_init_one (struct scatterlist*,struct virtio_console_control*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int use_multiport (struct ports_device*) ;
 scalar_t__ virtqueue_add_buf (struct virtqueue*,struct scatterlist*,int,int ,struct virtio_console_control*) ;
 int virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static ssize_t __send_control_msg(struct ports_device *portdev, u32 port_id,
      unsigned int event, unsigned int value)
{
 struct scatterlist sg[1];
 struct virtio_console_control cpkt;
 struct virtqueue *vq;
 unsigned int len;

 if (!use_multiport(portdev))
  return 0;

 cpkt.id = port_id;
 cpkt.event = event;
 cpkt.value = value;

 vq = portdev->c_ovq;

 sg_init_one(sg, &cpkt, sizeof(cpkt));

 spin_lock(&portdev->c_ovq_lock);
 if (virtqueue_add_buf(vq, sg, 1, 0, &cpkt) >= 0) {
  virtqueue_kick(vq);
  while (!virtqueue_get_buf(vq, &len))
   cpu_relax();
 }
 spin_unlock(&portdev->c_ovq_lock);
 return 0;
}
