
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* curr; } ;
struct saa7134_dev {int slock; TYPE_3__ vbi_q; scalar_t__ vbi_fieldcount; } ;
struct TYPE_5__ {scalar_t__ field_count; } ;
struct TYPE_6__ {int top_seen; TYPE_1__ vb; } ;


 int VIDEOBUF_DONE ;
 int saa7134_buffer_finish (struct saa7134_dev*,TYPE_3__*,int ) ;
 int saa7134_buffer_next (struct saa7134_dev*,TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void saa7134_irq_vbi_done(struct saa7134_dev *dev, unsigned long status)
{
 spin_lock(&dev->slock);
 if (dev->vbi_q.curr) {
  dev->vbi_fieldcount++;

  if ((status & 0x10) == 0x00) {
   dev->vbi_q.curr->top_seen = 1;
   goto done;
  }
  if (!dev->vbi_q.curr->top_seen)
   goto done;

  dev->vbi_q.curr->vb.field_count = dev->vbi_fieldcount;
  saa7134_buffer_finish(dev,&dev->vbi_q,VIDEOBUF_DONE);
 }
 saa7134_buffer_next(dev,&dev->vbi_q);

 done:
 spin_unlock(&dev->slock);
}
