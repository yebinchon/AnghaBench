
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct saa7134_dev {int empress_tsq; } ;
struct file {int f_flags; struct saa7134_dev* private_data; } ;


 int O_NONBLOCK ;
 int videobuf_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int empress_dqbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_dqbuf(&dev->empress_tsq, b,
    file->f_flags & O_NONBLOCK);
}
