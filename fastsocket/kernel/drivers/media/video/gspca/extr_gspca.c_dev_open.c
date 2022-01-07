
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debug; } ;
struct gspca_dev {TYPE_1__ vdev; int module; int present; } ;
struct file {struct gspca_dev* private_data; } ;
struct TYPE_4__ {int comm; } ;


 int D_STREAM ;
 int D_V4L2 ;
 int ENODEV ;
 int PDEBUG (int ,char*,int ) ;
 int V4L2_DEBUG_IOCTL ;
 int V4L2_DEBUG_IOCTL_ARG ;
 TYPE_2__* current ;
 int gspca_debug ;
 int try_module_get (int ) ;
 scalar_t__ video_devdata (struct file*) ;

__attribute__((used)) static int dev_open(struct file *file)
{
 struct gspca_dev *gspca_dev;

 PDEBUG(D_STREAM, "[%s] open", current->comm);
 gspca_dev = (struct gspca_dev *) video_devdata(file);
 if (!gspca_dev->present)
  return -ENODEV;


 if (!try_module_get(gspca_dev->module))
  return -ENODEV;

 file->private_data = gspca_dev;
 return 0;
}
