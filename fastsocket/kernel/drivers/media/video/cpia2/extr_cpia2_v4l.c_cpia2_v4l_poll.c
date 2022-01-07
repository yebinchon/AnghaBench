
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {scalar_t__ prio; } ;
struct camera_data {int dummy; } ;


 unsigned int POLLERR ;
 scalar_t__ V4L2_PRIORITY_RECORD ;
 unsigned int cpia2_poll (struct camera_data*,struct file*,struct poll_table_struct*) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static unsigned int cpia2_v4l_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct camera_data *cam = video_drvdata(filp);
 struct cpia2_fh *fh = filp->private_data;

 if(!cam)
  return POLLERR;


 if(fh->prio != V4L2_PRIORITY_RECORD) {
  return POLLERR;
 }

 return cpia2_poll(cam, filp, wait);
}
