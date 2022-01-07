
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_camera_host {TYPE_2__* ops; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_4__ {int stream; } ;
struct soc_camera_device {TYPE_3__ dev; TYPE_1__ vb_vidq; struct file* streamer; } ;
struct file {struct soc_camera_device* private_data; } ;
typedef int poll_table ;
struct TYPE_5__ {unsigned int (* poll ) (struct file*,int *) ;} ;


 unsigned int EBUSY ;
 unsigned int POLLERR ;
 int dev_err (TYPE_3__*,char*) ;
 scalar_t__ list_empty (int *) ;
 unsigned int stub1 (struct file*,int *) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static unsigned int soc_camera_poll(struct file *file, poll_table *pt)
{
 struct soc_camera_device *icd = file->private_data;
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);

 if (icd->streamer != file)
  return -EBUSY;

 if (list_empty(&icd->vb_vidq.stream)) {
  dev_err(&icd->dev, "Trying to poll with no queued buffers!\n");
  return POLLERR;
 }

 return ici->ops->poll(file, pt);
}
