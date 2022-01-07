
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct bttv_fh {int dummy; } ;


 int bttv_queue (struct bttv_fh*) ;
 int videobuf_querybuf (int ,struct v4l2_buffer*) ;

__attribute__((used)) static int bttv_querybuf(struct file *file, void *priv,
    struct v4l2_buffer *b)
{
 struct bttv_fh *fh = priv;
 return videobuf_querybuf(bttv_queue(fh), b);
}
