
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int sio_full; int wait_frame; } ;
struct file {struct stk_camera* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int is_present (struct stk_camera*) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int v4l_stk_poll(struct file *fp, poll_table *wait)
{
 struct stk_camera *dev = fp->private_data;

 poll_wait(fp, &dev->wait_frame, wait);

 if (!is_present(dev))
  return POLLERR;

 if (!list_empty(&dev->sio_full))
  return (POLLIN | POLLRDNORM);

 return 0;
}
