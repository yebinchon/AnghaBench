
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{


 return 0;
}
