
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {int users; int state; int open; int vb_vbiq; int vb_vidq; int udev; scalar_t__ alt; int v4l2_dev; struct em28xx_fh* dev; } ;
struct em28xx {int users; int state; int open; int vb_vbiq; int vb_vidq; int udev; scalar_t__ alt; int v4l2_dev; struct em28xx* dev; } ;


 int DEV_DISCONNECTED ;
 int EM28XX_RESOURCE_VBI ;
 int EM28XX_RESOURCE_VIDEO ;
 int EM28XX_SUSPEND ;
 int core ;
 int em28xx_errdev (char*,int) ;
 int em28xx_release_resources (struct em28xx_fh*) ;
 int em28xx_set_mode (struct em28xx_fh*,int ) ;
 int em28xx_uninit_isoc (struct em28xx_fh*) ;
 int em28xx_videodbg (char*,...) ;
 int kfree (struct em28xx_fh*) ;
 scalar_t__ res_check (struct em28xx_fh*,int ) ;
 int res_free (struct em28xx_fh*,int ) ;
 int s_power ;
 int usb_set_interface (int ,int ,int ) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int wake_up_interruptible_nr (int *,int) ;

__attribute__((used)) static int em28xx_v4l2_close(struct file *filp)
{
 struct em28xx_fh *fh = filp->private_data;
 struct em28xx *dev = fh->dev;
 int errCode;

 em28xx_videodbg("users=%d\n", dev->users);

 if (res_check(fh, EM28XX_RESOURCE_VIDEO)) {
  videobuf_stop(&fh->vb_vidq);
  res_free(fh, EM28XX_RESOURCE_VIDEO);
 }

 if (res_check(fh, EM28XX_RESOURCE_VBI)) {
  videobuf_stop(&fh->vb_vbiq);
  res_free(fh, EM28XX_RESOURCE_VBI);
 }

 if (dev->users == 1) {


  if (dev->state & DEV_DISCONNECTED) {
   em28xx_release_resources(dev);
   kfree(dev);
   return 0;
  }


  v4l2_device_call_all(&dev->v4l2_dev, 0, core, s_power, 0);


  em28xx_uninit_isoc(dev);
  em28xx_set_mode(dev, EM28XX_SUSPEND);


  dev->alt = 0;
  em28xx_videodbg("setting alternate 0\n");
  errCode = usb_set_interface(dev->udev, 0, 0);
  if (errCode < 0) {
   em28xx_errdev("cannot change alternate number to "
     "0 (error=%i)\n", errCode);
  }
 }

 videobuf_mmap_free(&fh->vb_vidq);
 videobuf_mmap_free(&fh->vb_vbiq);
 kfree(fh);
 dev->users--;
 wake_up_interruptible_nr(&dev->open, 1);
 return 0;
}
