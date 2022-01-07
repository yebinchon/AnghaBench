
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cafe_camera* private_data; } ;
struct cafe_camera {scalar_t__ next_buf; int iowait; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int cafe_v4l_poll(struct file *filp,
  struct poll_table_struct *pt)
{
 struct cafe_camera *cam = filp->private_data;

 poll_wait(filp, &cam->iowait, pt);
 if (cam->next_buf >= 0)
  return POLLIN | POLLRDNORM;
 return 0;
}
