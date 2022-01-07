
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {scalar_t__ prio; int mmapped; } ;
struct camera_data {int dummy; } ;


 int EBUSY ;
 scalar_t__ V4L2_PRIORITY_RECORD ;
 int cpia2_remap_buffer (struct camera_data*,struct vm_area_struct*) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_mmap(struct file *file, struct vm_area_struct *area)
{
 struct camera_data *cam = video_drvdata(file);
 int retval;


 struct cpia2_fh *fh = file->private_data;
 if(fh->prio != V4L2_PRIORITY_RECORD) {
  return -EBUSY;
 }

 retval = cpia2_remap_buffer(cam, area);

 if(!retval)
  fh->mmapped = 1;
 return retval;
}
