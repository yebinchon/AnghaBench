
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int vfl_type; } ;
struct file {struct em28xx_fh* private_data; } ;
struct em28xx_fh {int radio; int type; int vb_vbiq; int vb_vidq; struct em28xx* dev; } ;
struct em28xx_buffer {int dummy; } ;
struct em28xx {scalar_t__ users; int lock; int slock; scalar_t__ progressive; int v4l2_dev; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EM28XX_ANALOG_MODE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;



 int em28xx_errdev (char*) ;
 int em28xx_resolution_set (struct em28xx*) ;
 int em28xx_set_alternate (struct em28xx*) ;
 int em28xx_set_mode (struct em28xx*,int ) ;
 int em28xx_vbi_qops ;
 int em28xx_video_qops ;
 int em28xx_videodbg (char*,...) ;
 int em28xx_wake_i2c (struct em28xx*) ;
 struct em28xx_fh* kzalloc (int,int ) ;
 int s_radio ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct em28xx* video_drvdata (struct file*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,int,int,int,struct em28xx_fh*,int *) ;

__attribute__((used)) static int em28xx_v4l2_open(struct file *filp)
{
 int errCode = 0, radio = 0;
 struct video_device *vdev = video_devdata(filp);
 struct em28xx *dev = video_drvdata(filp);
 enum v4l2_buf_type fh_type = 0;
 struct em28xx_fh *fh;
 enum v4l2_field field;

 switch (vdev->vfl_type) {
 case 130:
  fh_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  break;
 case 128:
  fh_type = V4L2_BUF_TYPE_VBI_CAPTURE;
  break;
 case 129:
  radio = 1;
  break;
 }

 em28xx_videodbg("open dev=%s type=%s users=%d\n",
   video_device_node_name(vdev), v4l2_type_names[fh_type],
   dev->users);


 fh = kzalloc(sizeof(struct em28xx_fh), GFP_KERNEL);
 if (!fh) {
  em28xx_errdev("em28xx-video.c: Out of memory?!\n");
  return -ENOMEM;
 }
 fh->dev = dev;
 fh->radio = radio;
 fh->type = fh_type;
 filp->private_data = fh;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {
  em28xx_set_mode(dev, EM28XX_ANALOG_MODE);
  em28xx_set_alternate(dev);
  em28xx_resolution_set(dev);




  em28xx_wake_i2c(dev);

 }
 if (fh->radio) {
  em28xx_videodbg("video_open: setting radio device\n");
  v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_radio);
 }

 dev->users++;

 if (dev->progressive)
  field = V4L2_FIELD_NONE;
 else
  field = V4L2_FIELD_INTERLACED;

 videobuf_queue_vmalloc_init(&fh->vb_vidq, &em28xx_video_qops,
        ((void*)0), &dev->slock,
        V4L2_BUF_TYPE_VIDEO_CAPTURE, field,
        sizeof(struct em28xx_buffer), fh, &dev->lock);

 videobuf_queue_vmalloc_init(&fh->vb_vbiq, &em28xx_vbi_qops,
        ((void*)0), &dev->slock,
        V4L2_BUF_TYPE_VBI_CAPTURE,
        V4L2_FIELD_SEQ_TB,
        sizeof(struct em28xx_buffer), fh, &dev->lock);

 return errCode;
}
