
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int dummy; } ;
struct file {int dummy; } ;


 int memcpy (struct v4l2_capability*,int *,int) ;
 int pvr_capability ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{



  memcpy(cap, &pvr_capability, sizeof(struct v4l2_capability));
 return 0;
}
