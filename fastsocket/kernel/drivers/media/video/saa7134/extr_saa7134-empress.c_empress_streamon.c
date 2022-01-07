
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int empress_tsq; } ;
struct file {struct saa7134_dev* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int videobuf_streamon (int *) ;

__attribute__((used)) static int empress_streamon(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_streamon(&dev->empress_tsq);
}
