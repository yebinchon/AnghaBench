
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpif_fh {int initialized; int prio; scalar_t__* io_allowed; struct channel_obj* channel; } ;
struct video_device {int dummy; } ;
struct file {struct vpif_fh* private_data; } ;
struct channel_obj {int initialized; int prio; int usrs; int vpifparams; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_PRIORITY_UNSET ;
 size_t VPIF_VIDEO_INDEX ;
 int atomic_inc (int *) ;
 struct vpif_fh* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int v4l2_prio_open (int *,int *) ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 int vpif_err (char*) ;

__attribute__((used)) static int vpif_open(struct file *filep)
{
 struct video_device *vdev = video_devdata(filep);
 struct channel_obj *ch = ((void*)0);
 struct vpif_fh *fh = ((void*)0);

 ch = video_get_drvdata(vdev);

 fh = kmalloc(sizeof(struct vpif_fh), GFP_KERNEL);
 if (fh == ((void*)0)) {
  vpif_err("unable to allocate memory for file handle object\n");
  return -ENOMEM;
 }


 filep->private_data = fh;
 fh->channel = ch;
 fh->initialized = 0;
 if (!ch->initialized) {
  fh->initialized = 1;
  ch->initialized = 1;
  memset(&ch->vpifparams, 0, sizeof(ch->vpifparams));
 }


 atomic_inc(&ch->usrs);

 fh->io_allowed[VPIF_VIDEO_INDEX] = 0;

 fh->prio = V4L2_PRIORITY_UNSET;
 v4l2_prio_open(&ch->prio, &fh->prio);

 return 0;
}
