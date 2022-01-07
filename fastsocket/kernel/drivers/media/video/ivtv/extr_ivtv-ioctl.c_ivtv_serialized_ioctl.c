
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int debug; } ;
struct ivtv_open_id {int prio; } ;
struct ivtv {int prio; } ;
struct file {int private_data; } ;


 int IVTV_DBGFLG_IOCTL ;
 int V4L2_DEBUG_IOCTL ;
 int V4L2_DEBUG_IOCTL_ARG ;
 struct ivtv_open_id* fh2id (int ) ;
 int ivtv_debug ;
 long v4l2_prio_check (int *,int ) ;
 struct video_device* video_devdata (struct file*) ;
 long video_ioctl2 (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long ivtv_serialized_ioctl(struct ivtv *itv, struct file *filp,
  unsigned int cmd, unsigned long arg)
{
 struct video_device *vfd = video_devdata(filp);
 struct ivtv_open_id *id = fh2id(filp->private_data);
 long ret;


 switch (cmd) {
 case 137:
 case 129:
 case 132:
 case 131:
 case 128:
 case 133:
 case 134:
 case 138:
 case 140:
 case 139:
 case 136:
 case 135:
 case 130:
 case 141:
  ret = v4l2_prio_check(&itv->prio, id->prio);
  if (ret)
   return ret;
 }

 if (ivtv_debug & IVTV_DBGFLG_IOCTL)
  vfd->debug = V4L2_DEBUG_IOCTL | V4L2_DEBUG_IOCTL_ARG;
 ret = video_ioctl2(filp, cmd, arg);
 vfd->debug = 0;
 return ret;
}
