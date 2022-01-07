
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; scalar_t__ curr; } ;
struct saa7146_vv {TYPE_1__ vbi_q; int * vbi_streaming; } ;
struct saa7146_fh {int vbi_read_timeout; int vbi_q; struct saa7146_dev* dev; } ;
struct saa7146_dev {int slock; struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;


 int DEB_VBI (char*) ;
 int MASK_20 ;
 int MASK_28 ;
 int MASK_29 ;
 int MC1 ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int ) ;
 int VIDEOBUF_DONE ;
 int del_timer (int *) ;
 int saa7146_buffer_finish (struct saa7146_dev*,TYPE_1__*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int videobuf_queue_cancel (int *) ;

__attribute__((used)) static void vbi_stop(struct saa7146_fh *fh, struct file *file)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 unsigned long flags;
 DEB_VBI(("dev:%p, fh:%p\n",dev, fh));

 spin_lock_irqsave(&dev->slock,flags);


 saa7146_write(dev, MC1, MASK_29);


 SAA7146_IER_DISABLE(dev, MASK_28);


 saa7146_write(dev, MC1, MASK_20);

 if (vv->vbi_q.curr) {
  saa7146_buffer_finish(dev,&vv->vbi_q,VIDEOBUF_DONE);
 }

 videobuf_queue_cancel(&fh->vbi_q);

 vv->vbi_streaming = ((void*)0);

 del_timer(&vv->vbi_q.timeout);
 del_timer(&fh->vbi_read_timeout);

 spin_unlock_irqrestore(&dev->slock, flags);
}
