
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct file {struct cx8800_fh* private_data; } ;
struct TYPE_5__ {scalar_t__ audioroute; int gpio2; int gpio1; int gpio0; int gpio3; } ;
struct TYPE_6__ {scalar_t__ audio_chip; TYPE_2__ radio; } ;
struct cx88_core {int lock; int users; int tvaudio; TYPE_3__ board; } ;
struct cx88_buffer {int dummy; } ;
struct cx8800_fh {int radio; int type; int width; int height; int vbiq; int vidq; int fmt; struct cx8800_dev* dev; } ;
struct cx8800_dev {int slock; TYPE_1__* pci; struct cx88_core* core; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int MO_GP2_IO ;
 int MO_GP3_IO ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_SEQ_TB ;
 scalar_t__ V4L2_IDENT_WM8775 ;
 int V4L2_PIX_FMT_BGR24 ;
 int V4L2_TUNER_MODE_STEREO ;



 int WW_FM ;
 int WW_I2SADC ;
 int atomic_inc (int *) ;
 int audio ;
 int call_all (struct cx88_core*,int ,int ,...) ;
 int cx8800_vbi_qops ;
 int cx8800_video_qops ;
 int cx88_set_stereo (struct cx88_core*,int ,int) ;
 int cx88_set_tvaudio (struct cx88_core*) ;
 int cx_write (int ,int ) ;
 int dprintk (int,char*,...) ;
 int format_by_fourcc (int ) ;
 struct cx8800_fh* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_radio ;
 int s_routing ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct cx8800_dev* video_drvdata (struct file*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int,int ,int,struct cx8800_fh*,int *) ;

__attribute__((used)) static int video_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 struct cx8800_fh *fh;
 enum v4l2_buf_type type = 0;
 int radio = 0;

 switch (vdev->vfl_type) {
 case 130:
  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  break;
 case 128:
  type = V4L2_BUF_TYPE_VBI_CAPTURE;
  break;
 case 129:
  radio = 1;
  break;
 }

 dprintk(1, "open dev=%s radio=%d type=%s\n",
  video_device_node_name(vdev), radio, v4l2_type_names[type]);


 fh = kzalloc(sizeof(*fh),GFP_KERNEL);
 if (unlikely(!fh))
  return -ENOMEM;

 file->private_data = fh;
 fh->dev = dev;
 fh->radio = radio;
 fh->type = type;
 fh->width = 320;
 fh->height = 240;
 fh->fmt = format_by_fourcc(V4L2_PIX_FMT_BGR24);

 mutex_lock(&core->lock);

 videobuf_queue_sg_init(&fh->vidq, &cx8800_video_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VIDEO_CAPTURE,
       V4L2_FIELD_INTERLACED,
       sizeof(struct cx88_buffer),
       fh, ((void*)0));
 videobuf_queue_sg_init(&fh->vbiq, &cx8800_vbi_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VBI_CAPTURE,
       V4L2_FIELD_SEQ_TB,
       sizeof(struct cx88_buffer),
       fh, ((void*)0));

 if (fh->radio) {
  dprintk(1,"video_open: setting radio device\n");
  cx_write(MO_GP3_IO, core->board.radio.gpio3);
  cx_write(MO_GP0_IO, core->board.radio.gpio0);
  cx_write(MO_GP1_IO, core->board.radio.gpio1);
  cx_write(MO_GP2_IO, core->board.radio.gpio2);
  if (core->board.radio.audioroute) {
   if(core->board.audio_chip &&
    core->board.audio_chip == V4L2_IDENT_WM8775) {
    call_all(core, audio, s_routing,
     core->board.radio.audioroute, 0, 0);
   }

   core->tvaudio = WW_I2SADC;
   cx88_set_tvaudio(core);
  } else {

   core->tvaudio = WW_FM;
   cx88_set_tvaudio(core);
   cx88_set_stereo(core,V4L2_TUNER_MODE_STEREO,1);
  }
  call_all(core, tuner, s_radio);
 }

 atomic_inc(&core->users);
 mutex_unlock(&core->lock);

 return 0;
}
