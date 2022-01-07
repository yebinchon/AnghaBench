
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_window {int height; int width; int clipcount; int flags; int chromakey; int y; int x; } ;
struct video_picture {int dummy; } ;
struct video_mmap {int format; int frame; int height; int width; } ;
struct video_mbuf {int size; int frames; int* offsets; } ;
struct video_device {int dummy; } ;
struct video_channel {int channel; int name; int type; int tuners; int flags; } ;
struct video_capability {int channels; int maxwidth; int maxheight; int minwidth; int minheight; int audios; int type; int name; } ;
struct video_buffer {int size; int frames; int* offsets; } ;
struct usb_stv {char* camera_name; int maxwidth; int maxheight; int maxframesize; TYPE_1__* frame; int streaming; int vwidth; int vheight; int udev; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {int grabstate; } ;


 long EBUSY ;
 long EINVAL ;
 long EIO ;
 long ENOIOCTLCMD ;
 int FRAME_ERROR ;
 int FRAME_GRABBING ;
 int FRAME_READY ;
 int FRAME_UNUSED ;
 int PDEBUG (int,char*,...) ;
 int STV680_NUMFRAMES ;
 int STV_VIDEO_PALETTE ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int memset (struct video_mbuf*,int ,int) ;
 int strcpy (int ,char*) ;
 int stv680_get_pict (struct usb_stv*,struct video_picture*) ;
 int stv680_newframe (struct usb_stv*,int) ;
 int stv680_set_pict (struct usb_stv*,struct video_picture*) ;
 int stv680_set_size (struct usb_stv*,int ,int ) ;
 int stv680_start_stream (struct usb_stv*) ;
 int swapRGB ;
 int swapRGB_on ;
 struct usb_stv* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static long stv680_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *vdev = file->private_data;
 struct usb_stv *stv680 = video_get_drvdata(vdev);

 if (!stv680->udev)
  return -EIO;

 switch (cmd) {
 case 145:{
   struct video_capability *b = arg;

   strcpy (b->name, stv680->camera_name);
   b->type = VID_TYPE_CAPTURE;
   b->channels = 1;
   b->audios = 0;
   b->maxwidth = stv680->maxwidth;
   b->maxheight = stv680->maxheight;
   b->minwidth = stv680->maxwidth / 2;
   b->minheight = stv680->maxheight / 2;
   return 0;
  }
 case 144:{
   struct video_channel *v = arg;

   if (v->channel != 0)
    return -EINVAL;
   v->flags = 0;
   v->tuners = 0;
   v->type = VIDEO_TYPE_CAMERA;
   strcpy (v->name, "STV Camera");
   return 0;
  }
 case 134:{
   struct video_channel *v = arg;
   if (v->channel != 0)
    return -EINVAL;
   return 0;
  }
 case 140:{
   struct video_picture *p = arg;

   stv680_get_pict (stv680, p);
   return 0;
  }
 case 131:{
   struct video_picture *p = arg;

   if (stv680_set_pict (stv680, p))
    return -EINVAL;
   return 0;
  }
 case 129:{
   struct video_window *vw = arg;

   if (vw->flags)
    return -EINVAL;
   if (vw->clipcount)
    return -EINVAL;
   if (vw->width != stv680->vwidth) {
    if (stv680_set_size (stv680, vw->width, vw->height)) {
     PDEBUG (2, "STV(e): failed (from user) set size in VIDIOCSWIN");
     return -EINVAL;
    }
   }
   return 0;
  }
 case 138:{
   struct video_window *vw = arg;

   vw->x = 0;
   vw->y = 0;
   vw->chromakey = 0;
   vw->flags = 0;
   vw->clipcount = 0;
   vw->width = stv680->vwidth;
   vw->height = stv680->vheight;
   return 0;
  }
 case 141:{
   struct video_mbuf *vm = arg;
   int i;

   memset (vm, 0, sizeof (*vm));
   vm->size = STV680_NUMFRAMES * stv680->maxframesize;
   vm->frames = STV680_NUMFRAMES;
   for (i = 0; i < STV680_NUMFRAMES; i++)
    vm->offsets[i] = stv680->maxframesize * i;
   return 0;
  }
 case 136:{
   struct video_mmap *vm = arg;

   if (vm->format != STV_VIDEO_PALETTE) {
    PDEBUG (2, "STV(i): VIDIOCMCAPTURE vm.format (%i) != VIDEO_PALETTE (%i)",
     vm->format, STV_VIDEO_PALETTE);
    if ((vm->format == 3) && (swapRGB_on == 0)) {
     PDEBUG (2, "STV(i): VIDIOCMCAPTURE swapRGB is (auto) ON");

     swapRGB = 1;
    }
    return -EINVAL;
   }
   if (vm->frame >= STV680_NUMFRAMES) {
    PDEBUG (2, "STV(e): VIDIOCMCAPTURE vm.frame > NUMFRAMES");
    return -EINVAL;
   }
   if ((stv680->frame[vm->frame].grabstate == FRAME_ERROR)
       || (stv680->frame[vm->frame].grabstate == FRAME_GRABBING)) {
    PDEBUG (2, "STV(e): VIDIOCMCAPTURE grabstate (%i) error",
     stv680->frame[vm->frame].grabstate);
    return -EBUSY;
   }

   if (stv680->vwidth != vm->width) {
    if (stv680_set_size (stv680, vm->width, vm->height)) {
     PDEBUG (2, "STV(e): VIDIOCMCAPTURE set_size failed");
     return -EINVAL;
    }
   }
   stv680->frame[vm->frame].grabstate = FRAME_READY;

   if (!stv680->streaming)
    stv680_start_stream (stv680);

   return 0;
  }
 case 128:{
   int *frame = arg;
   int ret = 0;

   if (*frame < 0 || *frame >= STV680_NUMFRAMES) {
    PDEBUG (2, "STV(e): Bad frame # in VIDIOCSYNC");
    return -EINVAL;
   }
   ret = stv680_newframe (stv680, *frame);
   stv680->frame[*frame].grabstate = FRAME_UNUSED;
   return ret;
  }
 case 143:{
   struct video_buffer *vb = arg;

   memset (vb, 0, sizeof (*vb));
   return 0;
  }
 case 137:
  return 0;
 case 147:
  {
   PDEBUG (2, "STV(e): VIDIOCCAPTURE failed");
   return -EINVAL;
  }
 case 133:
 case 139:
 case 130:
 case 142:
 case 132:
 case 146:
 case 135:
  return -EINVAL;
 default:
  return -ENOIOCTLCMD;
 }

 return 0;
}
