
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct front_face {int q; } ;
struct file {struct front_face* private_data; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct front_face *front = file->private_data;
 return videobuf_qbuf(&front->q, b);
}
