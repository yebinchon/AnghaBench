
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int saa7134_g_parm(struct file *file, void *fh,
    struct v4l2_streamparm *parm)
{
 return 0;
}
