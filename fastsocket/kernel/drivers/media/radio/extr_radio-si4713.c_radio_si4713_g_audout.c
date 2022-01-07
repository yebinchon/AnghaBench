
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audioout {scalar_t__ index; } ;
struct file {int dummy; } ;


 int radio_si4713_fill_audout (struct v4l2_audioout*) ;

__attribute__((used)) static int radio_si4713_g_audout(struct file *file, void *priv,
     struct v4l2_audioout *vao)
{
 int rval = radio_si4713_fill_audout(vao);

 vao->index = 0;

 return rval;
}
