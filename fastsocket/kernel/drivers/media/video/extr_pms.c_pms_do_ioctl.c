
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_window {int height; int width; int clipcount; int flags; } ;
struct video_tuner {int flags; int mode; int tuner; int rangehigh; int rangelow; int name; } ;
struct video_picture {int depth; int brightness; int hue; int colour; int contrast; int palette; } ;
struct video_device {int dummy; } ;
struct video_channel {int channel; int tuners; int name; int type; int flags; } ;
struct video_capability {int type; int channels; int maxwidth; int maxheight; int minwidth; int minheight; int audios; int name; } ;
struct pms_device {int width; int height; int lock; struct video_picture picture; } ;
struct file {int dummy; } ;


 long EINVAL ;
 long ENOIOCTLCMD ;




 int VIDEO_PALETTE_RGB555 ;
 int VIDEO_PALETTE_RGB565 ;
 int VIDEO_TUNER_NTSC ;
 int VIDEO_TUNER_PAL ;
 int VIDEO_TUNER_SECAM ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int VID_TYPE_SCALES ;
 int memset (struct video_window*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pms_brightness (int) ;
 int pms_colour (int) ;
 int pms_contrast (int) ;
 int pms_format (int) ;
 int pms_framerate (int) ;
 int pms_hue (int) ;
 int pms_resolution (int,int) ;
 int pms_secamcross (int) ;
 int pms_vcrinput (int) ;
 int pms_videosource (int) ;
 int standard ;
 int strcpy (int ,char*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static long pms_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *dev = video_devdata(file);
 struct pms_device *pd=(struct pms_device *)dev;

 switch(cmd)
 {
  case 142:
  {
   struct video_capability *b = arg;
   strcpy(b->name, "Mediavision PMS");
   b->type = VID_TYPE_CAPTURE|VID_TYPE_SCALES;
   b->channels = 4;
   b->audios = 0;
   b->maxwidth = 640;
   b->maxheight = 480;
   b->minwidth = 16;
   b->minheight = 16;
   return 0;
  }
  case 141:
  {
   struct video_channel *v = arg;
   if(v->channel<0 || v->channel>3)
    return -EINVAL;
   v->flags=0;
   v->tuners=1;

   v->type = VIDEO_TYPE_CAMERA;
   switch(v->channel)
   {
    case 0:
     strcpy(v->name, "Composite");break;
    case 1:
     strcpy(v->name, "SVideo");break;
    case 2:
     strcpy(v->name, "Composite(VCR)");break;
    case 3:
     strcpy(v->name, "SVideo(VCR)");break;
   }
   return 0;
  }
  case 133:
  {
   struct video_channel *v = arg;
   if(v->channel<0 || v->channel>3)
    return -EINVAL;
   mutex_lock(&pd->lock);
   pms_videosource(v->channel&1);
   pms_vcrinput(v->channel>>1);
   mutex_unlock(&pd->lock);
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
   v->flags= VIDEO_TUNER_PAL|VIDEO_TUNER_NTSC|VIDEO_TUNER_SECAM;
   switch(standard)
   {
    case 0:
     v->mode = 148;
     break;
    case 1:
     v->mode = 147;
     break;
    case 2:
     v->mode = 146;
     break;
    case 3:
     v->mode = 145;
     break;
   }
   return 0;
  }
  case 129:
  {
   struct video_tuner *v = arg;
   if(v->tuner)
    return -EINVAL;
   mutex_lock(&pd->lock);
   switch(v->mode)
   {
    case 148:
     pms_framerate(25);
     pms_secamcross(0);
     pms_format(0);
     break;
    case 147:
     pms_framerate(30);
     pms_secamcross(0);
     pms_format(1);
     break;
    case 146:
     pms_framerate(25);
     pms_secamcross(0);
     pms_format(2);
     break;
    case 145:
     pms_framerate(25);
     pms_secamcross(1);
     pms_format(2);
     break;
    default:
     mutex_unlock(&pd->lock);
     return -EINVAL;
   }
   mutex_unlock(&pd->lock);
   return 0;
  }
  case 138:
  {
   struct video_picture *p = arg;
   *p = pd->picture;
   return 0;
  }
  case 130:
  {
   struct video_picture *p = arg;
   if(!((p->palette==VIDEO_PALETTE_RGB565 && p->depth==16)
       ||(p->palette==VIDEO_PALETTE_RGB555 && p->depth==15)))
    return -EINVAL;
   pd->picture= *p;





   mutex_lock(&pd->lock);
   pms_brightness(p->brightness>>8);
   pms_hue(p->hue>>8);
   pms_colour(p->colour>>8);
   pms_contrast(p->contrast>>8);
   mutex_unlock(&pd->lock);
   return 0;
  }
  case 128:
  {
   struct video_window *vw = arg;
   if(vw->flags)
    return -EINVAL;
   if(vw->clipcount)
    return -EINVAL;
   if(vw->height<16||vw->height>480)
    return -EINVAL;
   if(vw->width<16||vw->width>640)
    return -EINVAL;
   pd->width=vw->width;
   pd->height=vw->height;
   mutex_lock(&pd->lock);
   pms_resolution(pd->width, pd->height);
   mutex_unlock(&pd->lock);
   return 0;
  }
  case 136:
  {
   struct video_window *vw = arg;
   memset(vw,0,sizeof(*vw));
   vw->width=pd->width;
   vw->height=pd->height;
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
