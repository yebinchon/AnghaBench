
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_window {int height; int width; } ;
struct video_device {int dummy; } ;
struct video_capability {int minheight; int minwidth; int maxheight; int maxwidth; int audios; int channels; int type; int name; } ;
struct file {int dummy; } ;
struct ar_device {int lock; void* mode; int line_bytes; int frame_bytes; int size; int width; int height; TYPE_1__* vdev; } ;
struct TYPE_2__ {int name; } ;


 int AR_FRAME_BYTES_QVGA ;
 int AR_FRAME_BYTES_VGA ;
 int AR_HEIGHT_QVGA ;
 int AR_HEIGHT_VGA ;
 int AR_LINE_BYTES_QVGA ;
 int AR_LINE_BYTES_VGA ;
 void* AR_MODE_INTERLACE ;
 void* AR_MODE_NORMAL ;
 int AR_SIZE_QVGA ;
 int AR_SIZE_VGA ;
 int AR_WIDTH_QVGA ;
 int AR_WIDTH_VGA ;
 int DEBUG (int,char*,...) ;
 long EINVAL ;
 long ENOIOCTLCMD ;
 int MAX_AR_HEIGHT ;
 int MAX_AR_WIDTH ;
 int MIN_AR_HEIGHT ;
 int MIN_AR_WIDTH ;
 int VID_TYPE_CAPTURE ;
 int memset (struct video_window*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,int ) ;
 int vga_interlace ;
 struct video_device* video_devdata (struct file*) ;
 struct ar_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static long ar_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *dev = video_devdata(file);
 struct ar_device *ar = video_get_drvdata(dev);

 DEBUG(1, "ar_ioctl()\n");
 switch(cmd) {
 case 154:
 {
  struct video_capability *b = arg;
  DEBUG(1, "VIDIOCGCAP:\n");
  strcpy(b->name, ar->vdev->name);
  b->type = VID_TYPE_CAPTURE;
  b->channels = 0;
  b->audios = 0;
  b->maxwidth = MAX_AR_WIDTH;
  b->maxheight = MAX_AR_HEIGHT;
  b->minwidth = MIN_AR_WIDTH;
  b->minheight = MIN_AR_HEIGHT;
  return 0;
 }
 case 152:
  DEBUG(1, "VIDIOCGCHAN:\n");
  return 0;
 case 138:
  DEBUG(1, "VIDIOCSCHAN:\n");
  return 0;
 case 146:
  DEBUG(1, "VIDIOCGTUNER:\n");
  return 0;
 case 132:
  DEBUG(1, "VIDIOCSTUNER:\n");
  return 0;
 case 148:
  DEBUG(1, "VIDIOCGPICT:\n");
  return 0;
 case 134:
  DEBUG(1, "VIDIOCSPICT:\n");
  return 0;
 case 156:
  DEBUG(1, "VIDIOCCAPTURE:\n");
  return -EINVAL;
 case 143:
 {
  struct video_window *w = arg;
  DEBUG(1, "VIDIOCGWIN:\n");
  memset(w, 0, sizeof(*w));
  w->width = ar->width;
  w->height = ar->height;
  return 0;
 }
 case 130:
 {
  struct video_window *w = arg;
  DEBUG(1, "VIDIOCSWIN:\n");
  if ((w->width != AR_WIDTH_VGA || w->height != AR_HEIGHT_VGA) &&
      (w->width != AR_WIDTH_QVGA || w->height != AR_HEIGHT_QVGA))
    return -EINVAL;

  mutex_lock(&ar->lock);
  ar->width = w->width;
  ar->height = w->height;
  if (ar->width == AR_WIDTH_VGA) {
   ar->size = AR_SIZE_VGA;
   ar->frame_bytes = AR_FRAME_BYTES_VGA;
   ar->line_bytes = AR_LINE_BYTES_VGA;
   if (vga_interlace)
    ar->mode = AR_MODE_INTERLACE;
   else
    ar->mode = AR_MODE_NORMAL;
  } else {
   ar->size = AR_SIZE_QVGA;
   ar->frame_bytes = AR_FRAME_BYTES_QVGA;
   ar->line_bytes = AR_LINE_BYTES_QVGA;
   ar->mode = AR_MODE_INTERLACE;
  }
  mutex_unlock(&ar->lock);
  return 0;
 }
 case 151:
  DEBUG(1, "VIDIOCGFBUF:\n");
  return -EINVAL;
 case 137:
  DEBUG(1, "VIDIOCSFBUF:\n");
  return -EINVAL;
 case 142:
  DEBUG(1, "VIDIOCKEY:\n");
  return 0;
 case 150:
  DEBUG(1, "VIDIOCGFREQ:\n");
  return -EINVAL;
 case 136:
  DEBUG(1, "VIDIOCSFREQ:\n");
  return -EINVAL;
 case 155:
  DEBUG(1, "VIDIOCGAUDIO:\n");
  return -EINVAL;
 case 140:
  DEBUG(1, "VIDIOCSAUDIO:\n");
  return -EINVAL;
 case 128:
  DEBUG(1, "VIDIOCSYNC:\n");
  return -EINVAL;
 case 141:
  DEBUG(1, "VIDIOCMCAPTURE:\n");
  return -EINVAL;
 case 149:
  DEBUG(1, "VIDIOCGMBUF:\n");
  return -EINVAL;
 case 145:
  DEBUG(1, "VIDIOCGUNIT:\n");
  return -EINVAL;
 case 153:
  DEBUG(1, "VIDIOCGCAPTURE:\n");
  return -EINVAL;
 case 139:
  DEBUG(1, "VIDIOCSCAPTURE:\n");
  return -EINVAL;
 case 133:
  DEBUG(1, "VIDIOCSPLAYMODE:\n");
  return -EINVAL;
 case 129:
  DEBUG(1, "VIDIOCSWRITEMODE:\n");
  return -EINVAL;
 case 147:
  DEBUG(1, "VIDIOCGPLAYINFO:\n");
  return -EINVAL;
 case 135:
  DEBUG(1, "VIDIOCSMICROCODE:\n");
  return -EINVAL;
 case 144:
  DEBUG(1, "VIDIOCGVBIFMT:\n");
  return -EINVAL;
 case 131:
  DEBUG(1, "VIDIOCSVBIFMT:\n");
  return -EINVAL;
 default:
  DEBUG(1, "Unknown ioctl(0x%08x)\n", cmd);
  return -ENOIOCTLCMD;
 }
 return 0;
}
