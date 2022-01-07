
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int name; int debug; int release; int * v4l2_dev; } ;
struct TYPE_3__ {size_t type; int v4l2_dev; } ;
struct bttv {int id; int revision; TYPE_1__ c; } ;
struct TYPE_4__ {int name; } ;


 int bttv_debug ;
 TYPE_2__* bttv_tvcards ;
 int snprintf (int ,int,char*,int,char*,char const*,int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;
 int video_set_drvdata (struct video_device*,struct bttv*) ;

__attribute__((used)) static struct video_device *vdev_init(struct bttv *btv,
          const struct video_device *template,
          const char *type_name)
{
 struct video_device *vfd;

 vfd = video_device_alloc();
 if (((void*)0) == vfd)
  return ((void*)0);
 *vfd = *template;
 vfd->v4l2_dev = &btv->c.v4l2_dev;
 vfd->release = video_device_release;
 vfd->debug = bttv_debug;
 video_set_drvdata(vfd, btv);
 snprintf(vfd->name, sizeof(vfd->name), "BT%d%s %s (%s)",
   btv->id, (btv->id==848 && btv->revision==0x12) ? "A" : "",
   type_name, bttv_tvcards[btv->c.type].name);
 return vfd;
}
