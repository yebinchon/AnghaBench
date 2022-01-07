
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_window {int height; int width; int clipcount; int flags; int chromakey; int y; int x; } ;
struct video_picture {int dummy; } ;
struct video_mmap {int frame; int height; int width; int format; } ;
struct video_mbuf {int size; int frames; int* offsets; } ;
struct video_device {int dummy; } ;
struct video_channel {int channel; int name; int type; int tuners; int flags; } ;
struct video_capability {int channels; int minheight; int minwidth; int maxheight; int maxwidth; int audios; int type; int name; } ;
struct video_buffer {int size; int frames; int* offsets; } ;
struct usb_se401 {char* camera_name; int maxframesize; int framecount; TYPE_1__* frame; int streaming; int cheight; int cwidth; int * height; int * width; int sizes; int dev; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {int grabstate; } ;


 long EBUSY ;
 long EINVAL ;
 long EIO ;
 long ENOIOCTLCMD ;
 int FRAME_READY ;
 int FRAME_UNUSED ;
 int SE401_NUMFRAMES ;
 int VIDEO_PALETTE_RGB24 ;
 int VIDEO_TYPE_CAMERA ;
 int VID_TYPE_CAPTURE ;
 int memset (struct video_mbuf*,int ,int) ;
 int se401_auto_resetlevel (struct usb_se401*) ;
 int se401_get_pict (struct usb_se401*,struct video_picture*) ;
 int se401_newframe (struct usb_se401*,int) ;
 int se401_send_pict (struct usb_se401*) ;
 int se401_set_pict (struct usb_se401*,struct video_picture*) ;
 int se401_set_size (struct usb_se401*,int ,int ) ;
 int se401_start_stream (struct usb_se401*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static long se401_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *vdev = file->private_data;
 struct usb_se401 *se401 = (struct usb_se401 *)vdev;

 if (!se401->dev)
  return -EIO;

 switch (cmd) {
 case 145:
 {
  struct video_capability *b = arg;
  strcpy(b->name, se401->camera_name);
  b->type = VID_TYPE_CAPTURE;
  b->channels = 1;
  b->audios = 0;
  b->maxwidth = se401->width[se401->sizes-1];
  b->maxheight = se401->height[se401->sizes-1];
  b->minwidth = se401->width[0];
  b->minheight = se401->height[0];
  return 0;
 }
 case 144:
 {
  struct video_channel *v = arg;

  if (v->channel != 0)
   return -EINVAL;
  v->flags = 0;
  v->tuners = 0;
  v->type = VIDEO_TYPE_CAMERA;
  strcpy(v->name, "Camera");
  return 0;
 }
 case 134:
 {
  struct video_channel *v = arg;

  if (v->channel != 0)
   return -EINVAL;
  return 0;
 }
 case 140:
 {
  struct video_picture *p = arg;

  se401_get_pict(se401, p);
  return 0;
 }
 case 131:
 {
  struct video_picture *p = arg;

  if (se401_set_pict(se401, p))
   return -EINVAL;
  return 0;
 }
 case 129:
 {
  struct video_window *vw = arg;

  if (vw->flags)
   return -EINVAL;
  if (vw->clipcount)
   return -EINVAL;
  if (se401_set_size(se401, vw->width, vw->height))
   return -EINVAL;
  return 0;
 }
 case 138:
 {
  struct video_window *vw = arg;

  vw->x = 0;
  vw->y = 0;
  vw->chromakey = 0;
  vw->flags = 0;
  vw->clipcount = 0;
  vw->width = se401->cwidth;
  vw->height = se401->cheight;
  return 0;
 }
 case 141:
 {
  struct video_mbuf *vm = arg;
  int i;

  memset(vm, 0, sizeof(*vm));
  vm->size = SE401_NUMFRAMES * se401->maxframesize;
  vm->frames = SE401_NUMFRAMES;
  for (i = 0; i < SE401_NUMFRAMES; i++)
   vm->offsets[i] = se401->maxframesize * i;
  return 0;
 }
 case 136:
 {
  struct video_mmap *vm = arg;

  if (vm->format != VIDEO_PALETTE_RGB24)
   return -EINVAL;
  if (vm->frame >= SE401_NUMFRAMES)
   return -EINVAL;
  if (se401->frame[vm->frame].grabstate != FRAME_UNUSED)
   return -EBUSY;


  if (se401_set_size(se401, vm->width, vm->height))
   return -EINVAL;
  se401->frame[vm->frame].grabstate = FRAME_READY;

  if (!se401->streaming)
   se401_start_stream(se401);


  if (se401->framecount == 0)
   se401_send_pict(se401);

  if (se401->framecount % 20 == 1)
   se401_auto_resetlevel(se401);

  return 0;
 }
 case 128:
 {
  int *frame = arg;
  int ret = 0;

  if (*frame < 0 || *frame >= SE401_NUMFRAMES)
   return -EINVAL;

  ret = se401_newframe(se401, *frame);
  se401->frame[*frame].grabstate = FRAME_UNUSED;
  return ret;
 }
 case 143:
 {
  struct video_buffer *vb = arg;

  memset(vb, 0, sizeof(*vb));
  return 0;
 }
 case 137:
  return 0;
 case 147:
  return -EINVAL;
 case 133:
  return -EINVAL;
 case 139:
 case 130:
  return -EINVAL;
 case 142:
 case 132:
  return -EINVAL;
 case 146:
 case 135:
  return -EINVAL;
 default:
  return -ENOIOCTLCMD;
 }

 return 0;
}
