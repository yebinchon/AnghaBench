
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dmaqueue {int queue; struct saa7146_buf* curr; } ;
struct saa7146_dev {int slock; } ;
struct TYPE_2__ {int state; int queue; } ;
struct saa7146_buf {TYPE_1__ vb; int (* activate ) (struct saa7146_dev*,struct saa7146_buf*,int *) ;} ;


 int BUG_ON (int) ;
 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 int VIDEOBUF_QUEUED ;
 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 int stub1 (struct saa7146_dev*,struct saa7146_buf*,int *) ;

int saa7146_buffer_queue(struct saa7146_dev *dev,
    struct saa7146_dmaqueue *q,
    struct saa7146_buf *buf)
{
 assert_spin_locked(&dev->slock);
 DEB_EE(("dev:%p, dmaq:%p, buf:%p\n", dev, q, buf));

 BUG_ON(!q);

 if (((void*)0) == q->curr) {
  q->curr = buf;
  DEB_D(("immediately activating buffer %p\n", buf));
  buf->activate(dev,buf,((void*)0));
 } else {
  list_add_tail(&buf->vb.queue,&q->queue);
  buf->vb.state = VIDEOBUF_QUEUED;
  DEB_D(("adding buffer %p to queue. (active buffer present)\n", buf));
 }
 return 0;
}
