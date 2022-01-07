
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long irq; } ;
struct TYPE_7__ {TYPE_4__* avail; } ;
struct virtqueue {TYPE_2__ config; TYPE_3__ vring; TYPE_1__* dev; scalar_t__ pending_used; } ;
typedef int buf ;
struct TYPE_8__ {int flags; scalar_t__ idx; } ;
struct TYPE_5__ {int irq_on_empty; } ;


 unsigned long LHREQ_IRQ ;
 int VRING_AVAIL_F_NO_INTERRUPT ;
 int err (int,char*,unsigned long) ;
 scalar_t__ lg_last_avail (struct virtqueue*) ;
 int lguest_fd ;
 scalar_t__ write (int ,unsigned long*,int) ;

__attribute__((used)) static void trigger_irq(struct virtqueue *vq)
{
 unsigned long buf[] = { LHREQ_IRQ, vq->config.irq };


 if (!vq->pending_used)
  return;
 vq->pending_used = 0;


 if (vq->vring.avail->flags & VRING_AVAIL_F_NO_INTERRUPT) {

  if (!vq->dev->irq_on_empty
      || lg_last_avail(vq) != vq->vring.avail->idx)
   return;
 }


 if (write(lguest_fd, buf, sizeof(buf)) != 0)
  err(1, "Triggering irq %i", vq->config.irq);
}
