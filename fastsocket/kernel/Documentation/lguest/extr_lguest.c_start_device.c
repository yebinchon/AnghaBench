
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {scalar_t__ service; struct virtqueue* next; } ;
struct device {unsigned int feature_len; int running; struct virtqueue* vq; int irq_on_empty; int name; } ;


 int VIRTIO_F_NOTIFY_ON_EMPTY ;
 int accepted_feature (struct device*,int ) ;
 int create_thread (struct virtqueue*) ;
 int * get_feature_bits (struct device*) ;
 int verbose (char*,...) ;

__attribute__((used)) static void start_device(struct device *dev)
{
 unsigned int i;
 struct virtqueue *vq;

 verbose("Device %s OK: offered", dev->name);
 for (i = 0; i < dev->feature_len; i++)
  verbose(" %02x", get_feature_bits(dev)[i]);
 verbose(", accepted");
 for (i = 0; i < dev->feature_len; i++)
  verbose(" %02x", get_feature_bits(dev)
   [dev->feature_len+i]);

 dev->irq_on_empty = accepted_feature(dev, VIRTIO_F_NOTIFY_ON_EMPTY);

 for (vq = dev->vq; vq; vq = vq->next) {
  if (vq->service)
   create_thread(vq);
 }
 dev->running = 1;
}
