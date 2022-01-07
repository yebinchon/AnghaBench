
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {int dummy; } ;
struct file {int dummy; } ;


 int core ;
 int get_v4l2_dev (struct file*) ;
 int s_ext_ctrls ;
 int v4l2_device_call_until_err (int ,int ,int ,int ,struct v4l2_ext_controls*) ;

__attribute__((used)) static int radio_si4713_s_ext_ctrls(struct file *file, void *p,
      struct v4l2_ext_controls *vecs)
{
 return v4l2_device_call_until_err(get_v4l2_dev(file), 0, core,
       s_ext_ctrls, vecs);
}
