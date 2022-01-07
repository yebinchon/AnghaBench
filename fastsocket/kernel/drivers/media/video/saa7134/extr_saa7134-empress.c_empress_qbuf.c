
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct saa7134_dev {int empress_tsq; } ;
struct file {struct saa7134_dev* private_data; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int empress_qbuf(struct file *file, void *priv, struct v4l2_buffer *b)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_qbuf(&dev->empress_tsq, b);
}
