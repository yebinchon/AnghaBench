
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int radio; int type; int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_4__ {int slock; } ;
struct TYPE_3__ {int slock; } ;
struct cx231xx {scalar_t__ users; scalar_t__ model; int video_input; int lock; TYPE_2__ vbi_mode; TYPE_1__ video_mode; int height; int width; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int CX231XX_ANALOG_MODE ;
 scalar_t__ CX231XX_BOARD_CNXT_VIDEO_GRABBER ;
 scalar_t__ CX231XX_BOARD_HAUPPAUGE_USBLIVE2 ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INDEX_VANC ;
 int POLARIS_AVMODE_ANALOGT_TV ;
 int POLARIS_AVMODE_ENXTERNAL_AV ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_SEQ_TB ;



 int call_all (struct cx231xx*,int ,int ) ;
 int cx231xx_config_i2c (struct cx231xx*) ;
 int cx231xx_errdev (char*) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int ) ;
 int cx231xx_set_mode (struct cx231xx*,int ) ;
 int cx231xx_set_power_mode (struct cx231xx*,int ) ;
 int cx231xx_set_video_alternate (struct cx231xx*) ;
 int cx231xx_vbi_qops ;
 int cx231xx_video_qops ;
 int cx231xx_videodbg (char*,...) ;
 struct cx231xx_fh* kzalloc (int,int ) ;
 int norm_maxh (struct cx231xx*) ;
 int norm_maxw (struct cx231xx*) ;
 int s_radio ;
 int tuner ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct cx231xx* video_drvdata (struct file*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,int,int ,int,struct cx231xx_fh*,int *) ;

__attribute__((used)) static int cx231xx_v4l2_open(struct file *filp)
{
 int errCode = 0, radio = 0;
 struct video_device *vdev = video_devdata(filp);
 struct cx231xx *dev = video_drvdata(filp);
 struct cx231xx_fh *fh;
 enum v4l2_buf_type fh_type = 0;

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

 cx231xx_videodbg("open dev=%s type=%s users=%d\n",
    video_device_node_name(vdev), v4l2_type_names[fh_type],
    dev->users);
 fh = kzalloc(sizeof(struct cx231xx_fh), GFP_KERNEL);
 if (!fh) {
  cx231xx_errdev("cx231xx-video.c: Out of memory?!\n");
  return -ENOMEM;
 }
 fh->dev = dev;
 fh->radio = radio;
 fh->type = fh_type;
 filp->private_data = fh;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {
  dev->width = norm_maxw(dev);
  dev->height = norm_maxh(dev);


  if (dev->model == CX231XX_BOARD_CNXT_VIDEO_GRABBER ||
      dev->model == CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
   cx231xx_set_power_mode(dev,
     POLARIS_AVMODE_ENXTERNAL_AV);
  else
   cx231xx_set_power_mode(dev, POLARIS_AVMODE_ANALOGT_TV);






  cx231xx_set_video_alternate(dev);



  cx231xx_config_i2c(dev);


  dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

 }
 if (fh->radio) {
  cx231xx_videodbg("video_open: setting radio device\n");



  call_all(dev, tuner, s_radio);
 }

 dev->users++;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  videobuf_queue_vmalloc_init(&fh->vb_vidq, &cx231xx_video_qops,
         ((void*)0), &dev->video_mode.slock,
         fh->type, V4L2_FIELD_INTERLACED,
         sizeof(struct cx231xx_buffer),
         fh, &dev->lock);
 if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {


  if (dev->model != CX231XX_BOARD_CNXT_VIDEO_GRABBER &&
      dev->model != CX231XX_BOARD_HAUPPAUGE_USBLIVE2)
   cx231xx_set_alt_setting(dev, INDEX_VANC, 0);

  videobuf_queue_vmalloc_init(&fh->vb_vidq, &cx231xx_vbi_qops,
         ((void*)0), &dev->vbi_mode.slock,
         fh->type, V4L2_FIELD_SEQ_TB,
         sizeof(struct cx231xx_buffer),
         fh, &dev->lock);
 }

 return errCode;
}
