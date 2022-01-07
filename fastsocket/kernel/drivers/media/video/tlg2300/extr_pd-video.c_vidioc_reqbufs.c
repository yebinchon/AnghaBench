
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct front_face {int q; } ;
struct file {struct front_face* private_data; } ;


 int logs (struct front_face*) ;
 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *fh,
    struct v4l2_requestbuffers *b)
{
 struct front_face *front = file->private_data;
 logs(front);
 return videobuf_reqbufs(&front->q, b);
}
