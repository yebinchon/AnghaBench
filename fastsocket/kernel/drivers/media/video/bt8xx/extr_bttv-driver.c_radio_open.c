
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {int prio; } ;
struct TYPE_2__ {int nr; } ;
struct bttv {int radio_user; int prio; struct bttv_fh init; TYPE_1__ c; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TVAUDIO_INPUT_RADIO ;
 int audio_input (struct bttv*,int ) ;
 int bttv_call_all (struct bttv*,int ,int ) ;
 int dprintk (char*,int ) ;
 struct bttv_fh* kmalloc (int,int ) ;
 int s_radio ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int v4l2_prio_open (int *,int *) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct bttv* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct bttv *btv = video_drvdata(file);
 struct bttv_fh *fh;

 dprintk("bttv: open dev=%s\n", video_device_node_name(vdev));

 dprintk("bttv%d: open called (radio)\n",btv->c.nr);


 fh = kmalloc(sizeof(*fh), GFP_KERNEL);
 if (unlikely(!fh))
  return -ENOMEM;
 file->private_data = fh;
 *fh = btv->init;

 v4l2_prio_open(&btv->prio, &fh->prio);

 btv->radio_user++;

 bttv_call_all(btv, tuner, s_radio);
 audio_input(btv,TVAUDIO_INPUT_RADIO);

 return 0;
}
