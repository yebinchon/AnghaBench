
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id *i)
{
 return 0;
}
