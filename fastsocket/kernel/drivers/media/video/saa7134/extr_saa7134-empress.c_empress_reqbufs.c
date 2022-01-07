
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct saa7134_dev {int empress_tsq; } ;
struct file {struct saa7134_dev* private_data; } ;


 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int empress_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *p)
{
 struct saa7134_dev *dev = file->private_data;

 return videobuf_reqbufs(&dev->empress_tsq, p);
}
