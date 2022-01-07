
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {int event_list; int event_wait; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

unsigned int drm_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct drm_file *file_priv = filp->private_data;
 unsigned int mask = 0;

 poll_wait(filp, &file_priv->event_wait, wait);

 if (!list_empty(&file_priv->event_list))
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
