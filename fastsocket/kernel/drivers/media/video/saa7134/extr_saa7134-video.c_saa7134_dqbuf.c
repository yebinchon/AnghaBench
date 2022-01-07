
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct saa7134_fh {int dummy; } ;
struct file {int f_flags; } ;


 int O_NONBLOCK ;
 int saa7134_queue (struct saa7134_fh*) ;
 int videobuf_dqbuf (int ,struct v4l2_buffer*,int) ;

__attribute__((used)) static int saa7134_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct saa7134_fh *fh = priv;
 return videobuf_dqbuf(saa7134_queue(fh), b,
    file->f_flags & O_NONBLOCK);
}
