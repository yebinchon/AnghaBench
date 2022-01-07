
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct bttv_fh {int dummy; } ;


 int O_NONBLOCK ;
 int bttv_queue (struct bttv_fh*) ;
 int videobuf_dqbuf (int ,struct v4l2_buffer*,int) ;

__attribute__((used)) static int bttv_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct bttv_fh *fh = priv;
 return videobuf_dqbuf(bttv_queue(fh), b,
   file->f_flags & O_NONBLOCK);
}
