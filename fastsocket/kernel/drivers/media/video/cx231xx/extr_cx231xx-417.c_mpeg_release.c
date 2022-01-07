
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct file {struct cx231xx_fh* private_data; } ;
struct TYPE_4__ {scalar_t__ reading; scalar_t__ streaming; } ;
struct cx231xx_fh {TYPE_1__ vidq; int v4l_reading; struct cx231xx* dev; } ;
struct cx231xx {int lock; int v4l_reader_count; scalar_t__ USE_ISO; } ;


 int CX231XX_SUSPEND ;
 int CX231xx_END_NOW ;
 int CX231xx_MPEG_CAPTURE ;
 int CX231xx_RAW_BITS_NONE ;
 int CX2341X_ENC_STOP_CAPTURE ;
 int atomic_cmpxchg (int *,int,int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int cx231xx_417_check_encoder (struct cx231xx*) ;
 int cx231xx_api_cmd (struct cx231xx*,int ,int,int ,int ,int ,int ) ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int cx231xx_stop_TS1 (struct cx231xx*) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int cx231xx_uninit_isoc (struct cx231xx*) ;
 int dprintk (int,char*,...) ;
 int kfree (struct cx231xx_fh*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int videobuf_mmap_free (TYPE_1__*) ;
 int videobuf_read_stop (TYPE_1__*) ;
 int videobuf_streamoff (TYPE_1__*) ;

__attribute__((used)) static int mpeg_release(struct file *file)
{
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;

 dprintk(3, "mpeg_release()! dev=0x%p\n", dev);

 if (!dev) {
  dprintk(3, "abort!!!\n");
  return 0;
 }

 mutex_lock(&dev->lock);

 cx231xx_stop_TS1(dev);


  if (dev->USE_ISO)
   cx231xx_uninit_isoc(dev);
  else
   cx231xx_uninit_bulk(dev);
  cx231xx_set_mode(dev, CX231XX_SUSPEND);

  cx231xx_api_cmd(fh->dev, CX2341X_ENC_STOP_CAPTURE, 3, 0,
    CX231xx_END_NOW, CX231xx_MPEG_CAPTURE,
    CX231xx_RAW_BITS_NONE);



 if (atomic_cmpxchg(&fh->v4l_reading, 1, 0) == 1) {
  if (atomic_dec_return(&dev->v4l_reader_count) == 0) {


   msleep(500);
   cx231xx_417_check_encoder(dev);

  }
 }

 if (fh->vidq.streaming)
  videobuf_streamoff(&fh->vidq);
 if (fh->vidq.reading)
  videobuf_read_stop(&fh->vidq);

 videobuf_mmap_free(&fh->vidq);
 file->private_data = ((void*)0);
 kfree(fh);
 mutex_unlock(&dev->lock);
 return 0;
}
