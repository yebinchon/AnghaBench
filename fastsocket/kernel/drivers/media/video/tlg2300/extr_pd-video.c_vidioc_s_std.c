
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct front_face {int pd; } ;
struct file {int dummy; } ;


 int logs (struct front_face*) ;
 int set_std (int ,int *) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *fh, v4l2_std_id *norm)
{
 struct front_face *front = fh;
 logs(front);
 return set_std(front->pd, norm);
}
