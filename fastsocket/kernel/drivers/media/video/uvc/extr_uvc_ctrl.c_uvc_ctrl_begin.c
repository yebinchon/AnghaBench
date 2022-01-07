
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_chain {int ctrl_mutex; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;

int uvc_ctrl_begin(struct uvc_video_chain *chain)
{
 return mutex_lock_interruptible(&chain->ctrl_mutex) ? -ERESTARTSYS : 0;
}
