
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;


 int core ;
 int g_ctrl ;
 int get_v4l2_dev (struct file*) ;
 int v4l2_device_call_until_err (int ,int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int radio_si4713_g_ctrl(struct file *file, void *p,
      struct v4l2_control *vc)
{
 return v4l2_device_call_until_err(get_v4l2_dev(file), 0, core,
       g_ctrl, vc);
}
