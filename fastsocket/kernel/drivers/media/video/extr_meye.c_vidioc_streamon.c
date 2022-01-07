
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int mchip_mode; int lock; } ;


 int EINVAL ;


 int mchip_cont_compression_start () ;
 int mchip_continuous_start () ;
 TYPE_1__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *fh, enum v4l2_buf_type i)
{
 mutex_lock(&meye.lock);

 switch (meye.mchip_mode) {
 case 128:
  mchip_continuous_start();
  break;
 case 129:
  mchip_cont_compression_start();
  break;
 default:
  mutex_unlock(&meye.lock);
  return -EINVAL;
 }

 mutex_unlock(&meye.lock);

 return 0;
}
