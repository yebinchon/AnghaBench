
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx18 {int gpio_lock; int gpio_val; int gpio_dir; } ;


 int CX18_INFO_DEV (struct v4l2_subdev*,char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resetctrl_log_status(struct v4l2_subdev *sd)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);

 mutex_lock(&cx->gpio_lock);
 CX18_INFO_DEV(sd, "GPIO:  direction 0x%08x, value 0x%08x\n",
        cx->gpio_dir, cx->gpio_val);
 mutex_unlock(&cx->gpio_lock);
 return 0;
}
