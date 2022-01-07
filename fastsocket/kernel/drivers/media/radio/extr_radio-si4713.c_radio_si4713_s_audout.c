
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audioout {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int radio_si4713_s_audout(struct file *file, void *priv,
     struct v4l2_audioout *vao)
{
 return vao->index ? -EINVAL : 0;
}
