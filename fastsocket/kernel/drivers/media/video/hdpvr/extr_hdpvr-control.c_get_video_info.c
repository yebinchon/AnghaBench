
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_video_info {int width; int height; int fps; } ;
struct hdpvr_device {int* usbc_buf; int usbc_mutex; int v4l2_dev; int udev; } ;
typedef int print_buf ;


 int GFP_KERNEL ;
 int MSG_INFO ;
 int hdpvr_debug ;
 int hex_dump_to_buffer (int*,int,int,int,char*,int,int ) ;
 int kfree (struct hdpvr_video_info*) ;
 struct hdpvr_video_info* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int v4l2_dbg (int,int,int *,char*,int,char*) ;
 int v4l2_err (int *,char*) ;

struct hdpvr_video_info *get_video_info(struct hdpvr_device *dev)
{
 struct hdpvr_video_info *vidinf = ((void*)0);



 int ret;

 vidinf = kzalloc(sizeof(struct hdpvr_video_info), GFP_KERNEL);
 if (!vidinf) {
  v4l2_err(&dev->v4l2_dev, "out of memory\n");
  goto err;
 }

 mutex_lock(&dev->usbc_mutex);
 ret = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         0x81, 0x80 | 0x38,
         0x1400, 0x0003,
         dev->usbc_buf, 5,
         1000);
 if (ret == 5) {
  vidinf->width = dev->usbc_buf[1] << 8 | dev->usbc_buf[0];
  vidinf->height = dev->usbc_buf[3] << 8 | dev->usbc_buf[2];
  vidinf->fps = dev->usbc_buf[4];
 }
 mutex_unlock(&dev->usbc_mutex);

 if (!vidinf->width || !vidinf->height || !vidinf->fps) {
  kfree(vidinf);
  vidinf = ((void*)0);
 }
err:
 return vidinf;
}
