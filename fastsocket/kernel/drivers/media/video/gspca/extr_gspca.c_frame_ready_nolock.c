
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int memory; scalar_t__ fr_o; int fr_i; int streaming; struct file* capt_file; int present; } ;
struct file {int dummy; } ;
typedef enum v4l2_memory { ____Placeholder_v4l2_memory } v4l2_memory ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int frame_ready_nolock(struct gspca_dev *gspca_dev, struct file *file,
    enum v4l2_memory memory)
{
 if (!gspca_dev->present)
  return -ENODEV;
 if (gspca_dev->capt_file != file || gspca_dev->memory != memory ||
   !gspca_dev->streaming)
  return -EINVAL;


 return gspca_dev->fr_o != atomic_read(&gspca_dev->fr_i);
}
