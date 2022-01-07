
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_window {int height; int width; int clipcount; int flags; } ;
struct video_tuner {int mode; int tuner; int flags; int rangehigh; int rangelow; int name; } ;
struct video_picture {int colour; int hue; int brightness; int contrast; int whiteness; int depth; int palette; } ;
struct video_device {int dummy; } ;
struct video_channel {int channel; int name; int type; int tuners; int flags; } ;
struct video_capability {int type; int channels; int maxwidth; int maxheight; int minwidth; int minheight; int audios; int name; } ;
struct qcam_device {int brightness; int contrast; int whitebal; int bpp; int width; int height; int transfer_scale; int status; int lock; } ;
struct file {int dummy; } ;


 long EINVAL ;
 long ENOIOCTLCMD ;
 int QC_PARAM_CHANGE ;
 int VIDEO_MODE_AUTO ;
 int VIDEO_PALETTE_GREY ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int VID_TYPE_MONOCHROME ;
 int VID_TYPE_SCALES ;
 int memset (struct video_window*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qc_setscanmode (struct qcam_device*) ;
 int strcpy (int ,char*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static long qcam_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *dev = video_devdata(file);
 struct qcam_device *qcam=(struct qcam_device *)dev;

 switch(cmd)
 {
  case 142:
  {
   struct video_capability *b = arg;
   strcpy(b->name, "Quickcam");
   b->type = VID_TYPE_CAPTURE|VID_TYPE_SCALES|VID_TYPE_MONOCHROME;
   b->channels = 1;
   b->audios = 0;
   b->maxwidth = 320;
   b->maxheight = 240;
   b->minwidth = 80;
   b->minheight = 60;
   return 0;
  }
  case 141:
  {
   struct video_channel *v = arg;
   if(v->channel!=0)
    return -EINVAL;
   v->flags=0;
   v->tuners=0;

   v->type = VIDEO_TYPE_CAMERA;
   strcpy(v->name, "Camera");
   return 0;
  }
  case 133:
  {
   struct video_channel *v = arg;
   if(v->channel!=0)
    return -EINVAL;
   return 0;
  }
  case 137:
  {
   struct video_tuner *v = arg;
   if(v->tuner)
    return -EINVAL;
   strcpy(v->name, "Format");
   v->rangelow=0;
   v->rangehigh=0;
   v->flags= 0;
   v->mode = VIDEO_MODE_AUTO;
   return 0;
  }
  case 129:
  {
   struct video_tuner *v = arg;
   if(v->tuner)
    return -EINVAL;
   if(v->mode!=VIDEO_MODE_AUTO)
    return -EINVAL;
   return 0;
  }
  case 138:
  {
   struct video_picture *p = arg;
   p->colour=0x8000;
   p->hue=0x8000;
   p->brightness=qcam->brightness<<8;
   p->contrast=qcam->contrast<<8;
   p->whiteness=qcam->whitebal<<8;
   p->depth=qcam->bpp;
   p->palette=VIDEO_PALETTE_GREY;
   return 0;
  }
  case 130:
  {
   struct video_picture *p = arg;
   if(p->palette!=VIDEO_PALETTE_GREY)
    return -EINVAL;
   if(p->depth!=4 && p->depth!=6)
    return -EINVAL;





   qcam->brightness = p->brightness>>8;
   qcam->contrast = p->contrast>>8;
   qcam->whitebal = p->whiteness>>8;
   qcam->bpp = p->depth;

   mutex_lock(&qcam->lock);
   qc_setscanmode(qcam);
   mutex_unlock(&qcam->lock);
   qcam->status |= QC_PARAM_CHANGE;

   return 0;
  }
  case 128:
  {
   struct video_window *vw = arg;
   if(vw->flags)
    return -EINVAL;
   if(vw->clipcount)
    return -EINVAL;
   if(vw->height<60||vw->height>240)
    return -EINVAL;
   if(vw->width<80||vw->width>320)
    return -EINVAL;

   qcam->width = 320;
   qcam->height = 240;
   qcam->transfer_scale = 4;

   if(vw->width>=160 && vw->height>=120)
   {
    qcam->transfer_scale = 2;
   }
   if(vw->width>=320 && vw->height>=240)
   {
    qcam->width = 320;
    qcam->height = 240;
    qcam->transfer_scale = 1;
   }
   mutex_lock(&qcam->lock);
   qc_setscanmode(qcam);
   mutex_unlock(&qcam->lock);



   qcam->status |= QC_PARAM_CHANGE;


   return 0;
  }
  case 136:
  {
   struct video_window *vw = arg;
   memset(vw, 0, sizeof(*vw));
   vw->width=qcam->width/qcam->transfer_scale;
   vw->height=qcam->height/qcam->transfer_scale;
   return 0;
  }
  case 135:
   return 0;
  case 144:
  case 140:
  case 132:
  case 139:
  case 131:
  case 143:
  case 134:
   return -EINVAL;
  default:
   return -ENOIOCTLCMD;
 }
 return 0;
}
