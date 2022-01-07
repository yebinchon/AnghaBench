
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int core ;
 int get_v4l2_dev (struct file*) ;
 int ioctl ;
 long v4l2_device_call_until_err (int ,int ,int ,int ,int,void*) ;

__attribute__((used)) static long radio_si4713_default(struct file *file, void *p, int cmd, void *arg)
{
 return v4l2_device_call_until_err(get_v4l2_dev(file), 0, core,
       ioctl, cmd, arg);
}
