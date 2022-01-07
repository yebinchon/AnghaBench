
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int name; int release; int * parent; int * v4l2_dev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {char* name; } ;
struct cx88_core {char* name; TYPE_1__ board; int v4l2_dev; } ;


 int snprintf (int ,int,char*,char*,char*,char*) ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;

struct video_device *cx88_vdev_init(struct cx88_core *core,
        struct pci_dev *pci,
        struct video_device *template,
        char *type)
{
 struct video_device *vfd;

 vfd = video_device_alloc();
 if (((void*)0) == vfd)
  return ((void*)0);
 *vfd = *template;
 vfd->v4l2_dev = &core->v4l2_dev;
 vfd->parent = &pci->dev;
 vfd->release = video_device_release;
 snprintf(vfd->name, sizeof(vfd->name), "%s %s (%s)",
   core->name, type, core->board.name);
 return vfd;
}
