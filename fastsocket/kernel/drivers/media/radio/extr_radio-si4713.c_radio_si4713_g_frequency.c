
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;


 int g_frequency ;
 int get_v4l2_dev (struct file*) ;
 int tuner ;
 int v4l2_device_call_until_err (int ,int ,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int radio_si4713_g_frequency(struct file *file, void *p,
      struct v4l2_frequency *vf)
{
 return v4l2_device_call_until_err(get_v4l2_dev(file), 0, tuner,
       g_frequency, vf);
}
