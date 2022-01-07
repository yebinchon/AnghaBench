
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct front_face {int type; int q; } ;
struct file {struct front_face* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int logs (struct front_face*) ;
 scalar_t__ unlikely (int) ;
 int videobuf_streamoff (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *fh,
    enum v4l2_buf_type type)
{
 struct front_face *front = file->private_data;

 logs(front);
 if (unlikely(type != front->type))
  return -EINVAL;
 return videobuf_streamoff(&front->q);
}
