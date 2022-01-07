
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_window {int dummy; } ;
struct video_picture {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {int prio; } ;
struct TYPE_3__ {int stream_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {int busy_lock; int streaming; int mmapped; TYPE_2__ params; int prio; int vw; int vp; int present; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;



 int DBG (char*,int ) ;
 long EBUSY ;
 long EINVAL ;
 long ENODEV ;
 long ENOIOCTLCMD ;
 long ENOTTY ;
 long ERESTARTSYS ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_PRIORITY_RECORD ;
 long cpia2_usb_stream_start (struct camera_data*,int ) ;
 long cpia2_usb_stream_stop (struct camera_data*) ;
 long ioctl_cap_query (void*,struct camera_data*) ;
 long ioctl_cropcap (void*,struct camera_data*) ;
 long ioctl_dqbuf (void*,struct camera_data*,struct file*) ;
 long ioctl_enum_fmt (void*,struct camera_data*) ;
 long ioctl_g_ctrl (void*,struct camera_data*) ;
 long ioctl_g_jpegcomp (void*,struct camera_data*) ;
 long ioctl_get_channel (void*) ;
 long ioctl_get_fmt (void*,struct camera_data*) ;
 long ioctl_get_mbuf (void*,struct camera_data*) ;
 long ioctl_input (unsigned int,void*,struct camera_data*) ;
 long ioctl_mcapture (void*,struct camera_data*,struct cpia2_fh*) ;
 long ioctl_qbuf (void*,struct camera_data*) ;
 long ioctl_querybuf (void*,struct camera_data*) ;
 long ioctl_querycap (void*,struct camera_data*) ;
 long ioctl_queryctrl (void*,struct camera_data*) ;
 long ioctl_querymenu (void*,struct camera_data*) ;
 long ioctl_reqbufs (void*,struct camera_data*) ;
 long ioctl_s_ctrl (void*,struct camera_data*) ;
 long ioctl_s_jpegcomp (void*,struct camera_data*) ;
 long ioctl_set_channel (void*) ;
 long ioctl_set_fmt (void*,struct camera_data*,struct cpia2_fh*) ;
 long ioctl_set_gpio (void*,struct camera_data*) ;
 long ioctl_set_image_prop (void*,struct camera_data*) ;
 long ioctl_set_window_size (void*,struct camera_data*,struct cpia2_fh*) ;
 long ioctl_sync (void*,struct camera_data*) ;
 long ioctl_try_fmt (void*,struct camera_data*) ;
 int memcpy (void*,int *,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 long v4l2_prio_change (int *,int*,int) ;
 long v4l2_prio_check (int *,int*) ;
 int v4l2_prio_max (int *) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static long cpia2_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct camera_data *cam = video_drvdata(file);
 long retval = 0;

 if (!cam)
  return -ENOTTY;


 if (mutex_lock_interruptible(&cam->busy_lock))
  return -ERESTARTSYS;

 if (!cam->present) {
  mutex_unlock(&cam->busy_lock);
  return -ENODEV;
 }


 switch (cmd) {
 case 178:
 case 185:
 case 138:
 {
  struct cpia2_fh *fh = file->private_data;
  retval = v4l2_prio_check(&cam->prio, &fh->prio);
  if(retval) {
   mutex_unlock(&cam->busy_lock);
   return retval;
  }
  break;
 }
 case 190:
 case 177:
 {
  struct cpia2_fh *fh = file->private_data;
  if(fh->prio != V4L2_PRIORITY_RECORD) {
   mutex_unlock(&cam->busy_lock);
   return -EBUSY;
  }
  break;
 }
 default:
  break;
 }

 switch (cmd) {
 case 194:
  retval = ioctl_cap_query(arg, cam);
  break;

 case 193:
  retval = ioctl_get_channel(arg);
  break;
 case 183:
  retval = ioctl_set_channel(arg);
  break;
 case 189:
  memcpy(arg, &cam->vp, sizeof(struct video_picture));
  break;
 case 180:
  retval = ioctl_set_image_prop(arg, cam);
  break;
 case 187:
  memcpy(arg, &cam->vw, sizeof(struct video_window));
  break;
 case 178:
  retval = ioctl_set_window_size(arg, cam, file->private_data);
  break;
 case 190:
  retval = ioctl_get_mbuf(arg, cam);
  break;
 case 185:
  retval = ioctl_mcapture(arg, cam, file->private_data);
  break;
 case 177:
  retval = ioctl_sync(arg, cam);
  break;

 case 196:
 case 192:
 case 182:
 case 186:
  retval = -EINVAL;
  break;


 case 188:
 case 179:
 case 191:
 case 181:
  retval = -EINVAL;
  break;


 case 195:
 case 184:
  retval = -EINVAL;
  break;


 case 197:
  retval = ioctl_set_gpio(arg, cam);
  break;
 case 150:
  retval = ioctl_querycap(arg,cam);
  break;

 case 172:
 case 161:
 case 136:
  retval = ioctl_input(cmd, arg, cam);
  break;

 case 169:
  retval = ioctl_enum_fmt(arg,cam);
  break;
 case 128:
  retval = ioctl_try_fmt(arg,cam);
  break;
 case 163:
  retval = ioctl_get_fmt(arg,cam);
  break;
 case 138:
  retval = ioctl_set_fmt(arg,cam,file->private_data);
  break;

 case 176:
  retval = ioctl_cropcap(arg,cam);
  break;
 case 166:
 case 141:

  retval = -EINVAL;
  break;

 case 149:
  retval = ioctl_queryctrl(arg,cam);
  break;
 case 148:
  retval = ioctl_querymenu(arg,cam);
  break;
 case 165:
  retval = ioctl_g_ctrl(arg,cam);
  break;
 case 140:
  retval = ioctl_s_ctrl(arg,cam);
  break;

 case 160:
  retval = ioctl_g_jpegcomp(arg,cam);
  break;
 case 135:
  retval = ioctl_s_jpegcomp(arg,cam);
  break;

 case 156:
 {
  struct cpia2_fh *fh = file->private_data;
  *(enum v4l2_priority*)arg = fh->prio;
  break;
 }
 case 131:
 {
  struct cpia2_fh *fh = file->private_data;
  enum v4l2_priority prio;
  prio = *(enum v4l2_priority*)arg;
  if(cam->streaming &&
     prio != fh->prio &&
     fh->prio == V4L2_PRIORITY_RECORD) {

   retval = -EBUSY;
  } else if(prio == V4L2_PRIORITY_RECORD &&
     prio != fh->prio &&
     v4l2_prio_max(&cam->prio) == V4L2_PRIORITY_RECORD) {

   retval = -EBUSY;
  } else {
   retval = v4l2_prio_change(&cam->prio, &fh->prio, prio);
  }
  break;
 }

 case 146:
  retval = ioctl_reqbufs(arg,cam);
  break;
 case 151:
  retval = ioctl_querybuf(arg,cam);
  break;
 case 152:
  retval = ioctl_qbuf(arg,cam);
  break;
 case 175:
  retval = ioctl_dqbuf(arg,cam,file);
  break;
 case 144:
 {
  int type;
  DBG("VIDIOC_STREAMON, streaming=%d\n", cam->streaming);
  type = *(int*)arg;
  if(!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   retval = -EINVAL;

  if(!cam->streaming) {
   retval = cpia2_usb_stream_start(cam,
       cam->params.camera_state.stream_mode);
  } else {
   retval = -EINVAL;
  }

  break;
 }
 case 145:
 {
  int type;
  DBG("VIDIOC_STREAMOFF, streaming=%d\n", cam->streaming);
  type = *(int*)arg;
  if(!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   retval = -EINVAL;

  if(cam->streaming) {
   retval = cpia2_usb_stream_stop(cam);
  } else {
   retval = -EINVAL;
  }

  break;
 }

 case 171:
 case 158:
 case 133:
 case 159:
 case 134:

 case 174:
 case 168:
 case 143:

 case 173:
 case 167:
 case 142:

 case 170:
 case 147:
 case 155:
 case 130:

 case 154:
 case 129:
 case 162:
 case 137:

 case 153:
 case 164:
 case 139:

 case 157:
 case 132:
  retval = -EINVAL;
  break;
 default:
  retval = -ENOIOCTLCMD;
  break;
 }

 mutex_unlock(&cam->busy_lock);
 return retval;
}
