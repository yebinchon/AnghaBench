
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* curr; } ;
struct saa7134_dev {int slock; TYPE_3__ ts_q; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_5__ {int field; } ;
struct TYPE_6__ {TYPE_1__ vb; } ;


 int V4L2_FIELD_TOP ;
 int VIDEOBUF_DONE ;
 int saa7134_buffer_finish (struct saa7134_dev*,TYPE_3__*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void saa7134_irq_ts_done(struct saa7134_dev *dev, unsigned long status)
{
 enum v4l2_field field;

 spin_lock(&dev->slock);
 if (dev->ts_q.curr) {
  field = dev->ts_q.curr->vb.field;
  if (field == V4L2_FIELD_TOP) {
   if ((status & 0x100000) != 0x000000)
    goto done;
  } else {
   if ((status & 0x100000) != 0x100000)
    goto done;
  }
  saa7134_buffer_finish(dev,&dev->ts_q,VIDEOBUF_DONE);
 }
 saa7134_buffer_next(dev,&dev->ts_q);

 done:
 spin_unlock(&dev->slock);
}
