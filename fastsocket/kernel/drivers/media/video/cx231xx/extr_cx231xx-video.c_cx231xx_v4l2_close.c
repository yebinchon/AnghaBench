
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int users; scalar_t__ model; scalar_t__ type; int state; int open; scalar_t__ USE_ISO; int vb_vidq; int vbi_or_sliced_cc_mode; int devlist_count; struct cx231xx_fh* dev; } ;
struct cx231xx {int users; scalar_t__ model; scalar_t__ type; int state; int open; scalar_t__ USE_ISO; int vb_vidq; int vbi_or_sliced_cc_mode; int devlist_count; struct cx231xx* dev; } ;


 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ;
 scalar_t__ CX231XX_BOARD_HAUPPAUGE_USBLIVE2 ;
 int CX231XX_SUSPEND ;
 int DEV_DISCONNECTED ;
 int INDEX_HANC ;
 int INDEX_VANC ;
 int INDEX_VIDEO ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ atomic_read (int *) ;
 int call_all (struct cx231xx_fh*,int ,int ,int ) ;
 int core ;
 int cx231xx_release_resources (struct cx231xx_fh*) ;
 int cx231xx_set_alt_setting (struct cx231xx_fh*,int ,int ) ;
 int cx231xx_set_mode (struct cx231xx_fh*,int ) ;
 int cx231xx_uninit_bulk (struct cx231xx_fh*) ;
 int cx231xx_uninit_isoc (struct cx231xx_fh*) ;
 int cx231xx_uninit_vbi_isoc (struct cx231xx_fh*) ;
 int cx231xx_videodbg (char*,int) ;
 int kfree (struct cx231xx_fh*) ;
 scalar_t__ res_check (struct cx231xx_fh*) ;
 int res_free (struct cx231xx_fh*) ;
 int s_power ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int wake_up_interruptible_nr (int *,int) ;

__attribute__((used)) static int cx231xx_v4l2_close(struct file *filp)
{
 struct cx231xx_fh *fh = filp->private_data;
 struct cx231xx *dev = fh->dev;

 cx231xx_videodbg("users=%d\n", dev->users);

 cx231xx_videodbg("users=%d\n", dev->users);
 if (res_check(fh))
  res_free(fh);



 if (dev->model != CX231XX_BOARD_CNXT_VIDEO_GRABBER &&
     dev->model != CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
  if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
   videobuf_stop(&fh->vb_vidq);
   videobuf_mmap_free(&fh->vb_vidq);



   if (dev->state & DEV_DISCONNECTED) {
    if (atomic_read(&dev->devlist_count) > 0) {
     cx231xx_release_resources(dev);
     kfree(dev);
     dev = ((void*)0);
     return 0;
    }
    return 0;
   }


   cx231xx_uninit_vbi_isoc(dev);


   if (!dev->vbi_or_sliced_cc_mode)
    cx231xx_set_alt_setting(dev, INDEX_VANC, 0);
   else
    cx231xx_set_alt_setting(dev, INDEX_HANC, 0);

   kfree(fh);
   dev->users--;
   wake_up_interruptible_nr(&dev->open, 1);
   return 0;
  }

 if (dev->users == 1) {
  videobuf_stop(&fh->vb_vidq);
  videobuf_mmap_free(&fh->vb_vidq);



  if (dev->state & DEV_DISCONNECTED) {
   cx231xx_release_resources(dev);
   kfree(dev);
   dev = ((void*)0);
   return 0;
  }


  call_all(dev, core, s_power, 0);


  if (dev->USE_ISO)
   cx231xx_uninit_isoc(dev);
  else
   cx231xx_uninit_bulk(dev);
  cx231xx_set_mode(dev, CX231XX_SUSPEND);


  cx231xx_set_alt_setting(dev, INDEX_VIDEO, 0);
 }
 kfree(fh);
 dev->users--;
 wake_up_interruptible_nr(&dev->open, 1);
 return 0;
}
