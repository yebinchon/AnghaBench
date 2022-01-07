
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_link {int (* free_bus ) (struct soc_camera_link*) ;} ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int vdev; TYPE_1__ dev; } ;


 int dev_dbg (TYPE_1__*,char*,int ,int ) ;
 int stub1 (struct soc_camera_link*) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;

__attribute__((used)) static void mt9v022_video_remove(struct soc_camera_device *icd)
{
 struct soc_camera_link *icl = to_soc_camera_link(icd);

 dev_dbg(&icd->dev, "Video removed: %p, %p\n",
  icd->dev.parent, icd->vdev);
 if (icl->free_bus)
  icl->free_bus(icl);
}
